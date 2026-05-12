// Package greeter provides greeting utilities.
package greeter

import (
	"context"
	"errors"
	"fmt"
	"io"
	"os"
)

// MaxRetries is the default retry limit.
const MaxRetries = 3

// Greeting is the default greeting string.
const Greeting = "hello"

// ErrNegative is returned when a negative value is supplied.
var ErrNegative = errors.New("value is negative")

// Animal represents an animal entity.
type Animal struct {
	Name  string
	Sound string
	count int // unexported field
}

// Speak returns the animal's vocalization.
func (a *Animal) Speak() string {
	return fmt.Sprintf("%s says %s", a.Name, a.Sound)
}

// Stringer interface satisfied via method.
func (a Animal) String() string {
	return fmt.Sprintf("Animal{Name:%q}", a.Name)
}

// Namer is a simple interface.
type Namer interface {
	GetName() string
}

// Dog embeds Animal and extends it.
type Dog struct {
	Animal
	Breed string
}

// GetName satisfies Namer.
func (d Dog) GetName() string { return d.Name }

// MakeGreeter returns a closure over name.
func MakeGreeter(name string) func() string {
	msg := fmt.Sprintf("Hello, %s!", name)
	return func() string {
		return msg
	}
}

// Process demonstrates control flow and error handling.
func Process(ctx context.Context, value int) (int, error) {
	if value < 0 {
		return 0, fmt.Errorf("process: %w", ErrNegative)
	}

	var results []int

	for i := 0; i < MaxRetries; i++ {
		if i%2 == 0 {
			continue
		}
		select {
		case <-ctx.Done():
			return 0, ctx.Err()
		default:
			results = append(results, i*value)
		}
	}

	switch {
	case value == 0:
		return 0, nil
	case value > 100:
		return value / 2, nil
	default:
		sum := 0
		for _, v := range results {
			sum += v
		}
		return sum, nil
	}
}

// writeAll is a generic helper (Go 1.18+).
func writeAll[T fmt.Stringer](w io.Writer, items []T) error {
	for _, item := range items {
		if _, err := fmt.Fprintln(w, item.String()); err != nil {
			return err
		}
	}
	return nil
}

func main() {
	ctx := context.Background()

	dog := Dog{
		Animal: Animal{Name: "Rex", Sound: "woof"},
		Breed:  "Labrador",
	}

	greet := MakeGreeter(dog.GetName())
	fmt.Println(greet())

	result, err := Process(ctx, 42)
	if err != nil {
		fmt.Fprintf(os.Stderr, "error: %v\n", err)
		os.Exit(1)
	}

	_ = writeAll(os.Stdout, []Animal{dog.Animal})
	fmt.Printf("result=%d ratio=%.2f ready=%v\n", result, 3.14, true)

	// Bitwise, string escape
	bits := 0b1010 | 0b0101
	escaped := "line1\nline2\t\x41"
	_ = bits
	_ = escaped
}
