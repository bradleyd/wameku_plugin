# WamekuPlugin

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'wameku_plugin'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wameku_plugin

## Usage

Include `WamekuPlugin::Common` to any of your plguins.  This provides boilerplate methods that the `wameku_client_daemon` calls.

```ruby
require "sys/cpu"
require_relative "plugin"

class CpuPlugin
  include Plugin
  include Sys

  def initialize
  end

  def cpu_load
    CPU.load_avg
  end

  def stats
    CPU.cpu_stats
  end

end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
