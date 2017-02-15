# RarchNews
RarchNews is a **Ruby** gem written to help **Arch Linux** by notifying them _(with various methods)_ of the news written on the Arch Linux website, which we sometimes forget to check it regulary.
This gem was meant to be run on schedule, that's why I decided to use - our lovely! - **Systemd Timers** to put it on schedule.

## Installation

```
$ yaours -S rarch_news
```


## Usage

This gem provides a very simple straightforward api to fetch Arch Linux news by reading its RSS feed. To use it add this line to your application's Gemfile:

```ruby
gem 'rarch_news'
```

And then execute:

    $ bundle
    
## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nemoload/rarch_news.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

