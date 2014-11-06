# sysctl cookbook
[![Build Status](https://travis-ci.org/szelcsanyi/chef-sysctl.svg?branch=master)](https://travis-ci.org/szelcsanyi/chef-sysctl)

## Description

Configures [sysctl](http://en.wikipedia.org/wiki/Sysctl) system control parameters via Opscode Chef in /etc/sysctl.conf

## Supported Platforms

* Ubuntu
* Debian

## Recipes

* `sysctl` - The default no-op recipe.
* Predefined parameters:
* `sysctl::basic_securty` - Sets kernel level security settings.
* `sysctl::disable_ipv6` - If you do not use ipv6 then disable it.
* `sysctl::enable_forwarding` - Enables ipv4 forwarding.
* `sysctl::less_swapping` - Decrease swap ratio to 10 for less swapping.
* `sysctl::no_overcommit` - Do not overcommit available memory.
* `sysctl::panic` - Reboot on kernel panic.
* `sysctl::tune_conntrack` - Increase connection tracking buffers.
* `sysctl::tune_shm` - Increase shm.
* `sysctl::tune_tck_stack` - Tune tcp stack for higher throughput.
* `sysctl::tune_vfs` - Tune vfs.

## Usage
* name: the sysctl parameter
* comment: optional string for identification
* value: must be set to proper value
* immediately: (true/false) set value at runtime or at the end of chef run

```ruby
sysctl_parameter "net.ipv4.ip_forward" do
	comment "Enable ip forwarding"
	value "1"
	immediately true
end
```

## TODO

* Rewrite to LWRP

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

* Freely distributable and licensed under the [MIT license](http://szelcsanyi.mit-license.org/2014/license.html).
* Copyright (c) 2014 Gabor Szelcsanyi

[![image](https://ga-beacon.appspot.com/UA-56493884-1/chef-sysctl/README.md)](https://github.com/szelcsanyi/chef-sysctl)

