# Petitest

A minimal solid testing framework for Ruby.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "petitest"
```

And then execute:

```bash
bundle
```

Or install it yourself as:

```bash
gem install petitest
```

## Usage

### 1. Write test cases

Define a child class of `Petitest::TestGroup` with `#test_xxx` methods.

```ruby
# test/some_test.rb
require "petitest/autorun"

class SomeTest < Petitest::TestGroup
  def test_empty_string
    assert("")
  end

  def test_false
    assert(false)
  end

  def test_nil
    assert(nil)
  end

  def test_true
    assert(true)
  end

  def test_zero
    assert(0)
  end
end
```

### 2. Run tests

Run your test file as a Ruby script:

```bash
ruby test/some_test.rb
```

```
.FF..

Failures:

  1) false is not truthy

  2) nil is not truthy

5 tests, 2 falures
```
