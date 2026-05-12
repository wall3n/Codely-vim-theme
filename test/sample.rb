# single-line comment

# frozen_string_literal: true

require "json"
require_relative "config"

MAX_RETRIES = 3
GREETING    = "hello"

# Module namespace
module Animals
  # Base class
  class Animal
    attr_accessor :name, :sound

    @@count = 0  # class variable

    def initialize(name, sound)
      @name  = name   # instance variable
      @sound = sound
      @@count += 1
    end

    def speak
      "#{@name} says #{@sound}"
    end

    def self.count
      @@count
    end

    def to_s
      "#<Animal name=#{@name.inspect}>"
    end
  end

  class Dog < Animal
    def initialize(name)
      super(name, "woof")
    end

    def fetch(item)
      "#{name} fetches #{item}!"
    end
  end
end

# Symbols, ranges, regex
status    = :pending
range     = (1..MAX_RETRIES)
pattern   = /\A[a-z]+\z/i

# String types
single    = 'no #{interpolation} here'
double    = "Hello, #{GREETING}!\nEscaped: \tA"
heredoc   = <<~TEXT
  multi
  line
TEXT

# Blocks, procs, lambdas
greeter = ->(name) { "Hello, #{name}!" }

items = Array.new(10) { |i| i * 2 }
evens = items.select(&:even?)
total = items.reduce(0, :+)

MAX_RETRIES.times do |i|
  next if i.even?
  puts i
end

# Control flow
def process(value)
  return nil if value.nil?
  raise ArgumentError, "negative" if value.negative?

  result = case value
           when 0      then :zero
           when 1..9   then :small
           when Integer then value > 100 ? value / 2 : value
           else :unknown
           end

  result
rescue ArgumentError => e
  warn e.message
  nil
ensure
  $stdout.flush
end

# Hash and keyword arguments
config = {
  retries:  MAX_RETRIES,
  verbose:  false,
  callback: greeter
}

def configure(**opts)
  opts.merge(default: true)
end

puts Animals::Dog.new("Rex").fetch("ball")
