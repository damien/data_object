# DataObject

A simple, immutable data wrapper.

## Overview

This gem provides one class: `DataObject`. This class is very similar to a Struct, with two notable differences:

1. A `DataObject` is immutable and may not be altered after it has been created.
2. Classes that inherit from `DataObject` will require all known properties to be set when instances of such classes are initialized.

## Usage

A `DataObject` can be used much like `Struct` from the ruby standard library.

```ruby
coordinate = DataObject.new(x: 1, y: 2, z: 3) # => <DataObject x=1 y=3 z=3>
```

A `DataObject` has attribute readers.

```ruby
coordinate.x # => 1
coordinate.y # => 2
coordinate.z # => 3
```

A `DataObject` may also be coerced into an Array or a Hash.

```ruby
coordinate.to_a # => [[:x, 1], [:y, 2], [:z, 3]]
coordinate.to_h # => {:a=>1, :b=>2}
```

A `DataObject` is enumerable.

```ruby
coordinates.map { |name, value| value } # => [1,2,3]
```

### Your own data objects

You can make your own named `DataObject` classes.

Classes you create this way will have all the same properties a standard data object does. Additionally, descendants of a data object will ensure all known attributes are defined during initialization.

```ruby
Coordinate = DataObject.new(:x, :y, :z)
Coordinate.new(x: 1, z: 3) # => ArgumentError: missing keyword: y
coordinate = Coordinate.new(x: 1, y: 2, z: 3) # => <Coordinate x=1 y=2 z=3>
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'data_object'
```

And then execute:

```sh
bundle
```

Or install it yourself with RubyGems:

```sh
gem install data_object
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/damien/data_object. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
