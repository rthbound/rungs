# Rungs

Algorithm taken from [alexkroman/word-ladder](https://github.com/alexkroman/word-ladder/blob/master/README.md)

## Usage

```ruby
  require "rungs"
```

See @alexkroman's [instructions](https://github.com/alexkroman/word-ladder/blob/master/README.md) for the general idea.

Solving #0

    Rungs::WordLadder.new(word: "best").call.data.count

Solving #1 (bonus)

    result = Rungs::Climb.new.call.data
    result.select { |k,v| v.count == 33 }

Solving #2 (bonus)

    Rungs::WordLadder.new(word: "best", steps: 3).call.data.count


## Installation

Add this line to your application's Gemfile:

    gem 'rungs'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rungs

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
