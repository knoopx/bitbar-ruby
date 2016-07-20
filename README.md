# BitBar Ruby

bitbar-ruby helps you build BitBar plugins faster.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bitbar'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bitbar

## Usage

```ruby
require 'bitbar'
require 'open-uri'
require 'base64'

BitBar::Menu.new do
  item "One", size: 18
  item "Two"
  separator
  item "Dropdown" do
    item "Three"
    item "Four"
  end
  separator
  item image: Base64.strict_encode64(open("https://assets-cdn.github.com/images/modules/logos_page/GitHub-Mark.png").read)
end
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/knoopx/bitbar.
