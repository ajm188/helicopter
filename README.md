# Helicopter

Helicopter turns your classes into [helicopters](http://en.wikipedia.org/wiki/Helicopter_parent), allowing them to keep track of their children.

Helicopter only makes classes track their direct children.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'helicopter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install helicopter

## Usage

```ruby
require 'helicopter'

class Foo
  extend Helicopter
end

class Bar < Foo
end

Foo.subclasses #=> [Bar]
```
