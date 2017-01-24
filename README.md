# Guard::Berkshelf

A simple guard plugin to update Berkshelf.

## Install

Add the gem to your Gemfile (inside development group):

``` ruby
 gem 'guard-berkshelf', require: false
```

Add guard definition to your Guardfile by running this command:

```
$ bundle exec guard init berkshelf
```

## Usage

Please read [Guard usage doc](https://github.com/guard/guard#readme).

## Guardfile

``` ruby
guard :berkshelf do
  watch(%r{^Berkshelf$})
  watch(%r{^metadata.rb$})
  watch(%r{^test/fixtures/cookbooks})
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/guard-berkshelf.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
