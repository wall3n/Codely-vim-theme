// single-line comment

/**
 * Module for greeting utilities.
 * @module greeter
 */

import { EventEmitter } from "events";
import fs from "fs/promises";

const MAX_RETRIES = 3;          // constant
const GREETING    = "hello";    // string
const RATIO       = 3.14;       // number
const IS_READY    = true;       // boolean

// Symbols, template literals, tagged templates
const tag = (strings, ...values) =>
  strings.reduce((acc, str, i) => acc + str + (values[i] ?? ""), "");

const message = tag`${GREETING}, world — ratio: ${RATIO}`;
const escaped = "line1\nline2\tA";

// Arrow functions and destructuring
const makeGreeter = (name) => {
  const greeting = `Hello, ${name}!`;
  return () => greeting;
};

const greet = makeGreeter("world");

// Classes and inheritance
class Animal extends EventEmitter {
  static #count = 0;           // private static field

  /** @type {string} */
  name;

  constructor(name, sound) {
    super();
    this.name  = name;
    this.sound = sound;
    Animal.#count++;
  }

  speak() {
    return `${this.name} says ${this.sound}`;
  }

  static getCount() {
    return Animal.#count;
  }

  get label() {
    return `[${this.name}]`;
  }
}

class Dog extends Animal {
  constructor(name) {
    super(name, "woof");
  }

  fetch(item) {
    return `${this.name} fetches ${item}!`;
  }
}

// Control flow
async function process(value) {
  if (value == null) return null;

  for (let i = 0; i < MAX_RETRIES; i++) {
    if (i % 2 === 0) continue;
    await fs.writeFile(`/tmp/out_${i}.txt`, String(i));
  }

  const results = Array.from({ length: value }, (_, i) => i * 2)
    .filter((x) => x % 2 === 0)
    .map((x) => x + 1);

  switch (typeof value) {
    case "number":
      return value > 100 ? value / 2 : value;
    case "string":
      return value.trim();
    default:
      throw new TypeError(`unexpected type: ${typeof value}`);
  }
}

// Destructuring, spread, optional chaining, nullish coalescing
const { name: firstName = "anon", ...rest } = { name: "Ada", age: 30 };
const all = [...results ?? [], MAX_RETRIES];
const label = new Dog("Rex")?.label ?? "unknown";

// Operators
const flag = IS_READY && !(RATIO > 100);
const bits = 0b1010 | 0b0101;

// Regex
const re = /^hello\s+(\w+)$/i;

export { makeGreeter, Animal, Dog, process };
