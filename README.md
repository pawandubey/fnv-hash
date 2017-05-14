[![Build Status](https://travis-ci.org/pawandubey/fnv-hash.svg?branch=master)](https://travis-ci.org/pawandubey/fnv-hash)

# Fnv::Hash

Pure Ruby implementation of the [Fowler-Noll-Vo Hash Algorithms](https://en.wikipedia.org/wiki/Fowler%E2%80%93Noll%E2%80%93Vo_hash_function)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fnv-hash'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fnv-hash

## Usage

This gem supports geting both `fnv-1` and `fnv-1a` hashes for an item. Each of these variations also supports both 32 and 64 bit versions.

```ruby
# For FNV-1
hash = Fnv::Hash.fnv1(item, size: 32)

hash_64 = Fnv::Hash.fnv1(item, size: 64)

# For FNV-1a
hash = Fnv::Hash.fnv1a(item, size: 32)

hash_64 = Fnv::Hash.fnv1a(item, size: 64)

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/pawandubey/fnv-hash. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

Copyright 2017 Pawan Dubey

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


