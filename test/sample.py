# single-line comment

"""
Module docstring.
:param value: the input value
"""

from __future__ import annotations
import os
import sys
from typing import Optional, Union
from dataclasses import dataclass, field

MAX_RETRIES: int = 3
GREETING: str    = "hello"


@dataclass
class Config:
    """Application configuration."""

    retries: int  = MAX_RETRIES
    verbose: bool = False
    tags: list[str] = field(default_factory=list)


class Animal:
    """Represents an animal."""

    species: str = "unknown"

    def __init__(self, name: str, sound: str) -> None:
        self.name  = name
        self.sound = sound

    def speak(self) -> str:
        return f"{self.name} says {self.sound!r}"

    @classmethod
    def from_dict(cls, data: dict) -> "Animal":
        return cls(data["name"], data["sound"])

    @staticmethod
    def is_valid(name: str) -> bool:
        return bool(name and name.strip())

    def __repr__(self) -> str:
        return f"Animal(name={self.name!r})"


def make_greeter(name: str):
    """Higher-order function returning a greeter."""
    greeting = f"Hello, {name}!"

    def greet() -> str:
        return greeting

    return greet


# Control flow
def process(value: Optional[int]) -> Union[int, None]:
    if value is None:
        return None
    elif value < 0:
        raise ValueError(f"negative value: {value}")

    for i in range(MAX_RETRIES):
        if i % 2 == 0:
            continue
        print(i)

    result = [x * 2 for x in range(value) if x % 2 == 0]

    match value:
        case 0:
            return 0
        case int(n) if n > 100:
            return n // 2
        case _:
            return value

    return sum(result)


# String escapes and raw strings
escaped = "line1\nline2\ttabbedA"
raw     = r"no \n escaping here"
multi   = """
    multi
    line
"""

# Builtins
items = list(range(10))
total = sum(items)
names = list(map(str, items))
evens = list(filter(lambda x: x % 2 == 0, items))

if __name__ == "__main__":
    cat = Animal("Cat", "meow")
    print(cat.speak())
    sys.exit(os.EX_OK)
