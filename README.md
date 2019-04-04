# L7-sysctl cookbook
[![Build Status](https://travis-ci.org/szelcsanyi/chef-sysctl.svg?branch=master)](https://travis-ci.org/szelcsanyi/chef-sysctl)
[![security](https://hakiri.io/github/szelcsanyi/chef-sysctl/master.svg)](https://hakiri.io/github/szelcsanyi/chef-sysctl/master)
[![Cookbook Version](https://img.shields.io/cookbook/v/L7-sysctl.svg?style=flat)](https://supermarket.chef.io/cookbooks/L7-sysctl)

## Description

Configures [sysctl](http://en.wikipedia.org/wiki/Sysctl) system control parameters via Opscode Chef in /etc/sysctl.conf

## Supported Platforms

* Ubuntu 12.04+
* Debian 7.0+

## Recipes

* `L7-sysctl` - The default no-op recipe.
* Predefined parameters:
* `L7-sysctl::basic_securty` - Sets kernel level security settings.
* `L7-sysctl::disable_ipv6` - If you do not use ipv6 then disable it.
* `L7-sysctl::enable_forwarding` - Enables ipv4 forwarding.
* `L7-sysctl::less_swapping` - Decrease swap ratio to 10 for less swapping.
* `L7-sysctl::no_overcommit` - Do not overcommit available memory.
* `L7-sysctl::panic` - Reboot on kernel panic.
* `L7-sysctl::tune_conntrack` - Increase connection tracking buffers.
* `L7-sysctl::tune_shm` - Increase shm.
* `L7-sysctl::tune_tck_stack` - Tune tcp stack for 1G/10G networks for higher throughput.
* `L7-sysctl::tune_vfs` - Tune vfs.
* `L7-sysctl::disable_bridge_nf_call` - Disable netfilter calls on bridged packets.
* `L7-sysctl::ipv6_no_autoconfig` - No autoconfig for ipv6.
* `L7-sysctl::tcp_congestion_yeah` - Sets the tcp congestion control to [YeAH](http://infocom.uniroma1.it/~vacirca/yeah/yeah.pdf).
* `L7-sysctl::tcp_congestion_bbr` - Sets the tcp congestion control to [bbr](https://cloud.google.com/blog/products/gcp/tcp-bbr-congestion-control-comes-to-gcp-your-internet-just-got-faster).
* `L7-sysctl::tcp_fastopen` - Enable client/server side [tcp fast open](https://datatracker.ietf.org/doc/rfc7413/).

## Usage
* Include L7-sysctl::default recipe in your runlist.
* Place 'depends L7-sysctl' in the metadata of your cookbook.

* name: The sysctl parameter name.
* comment: Optional string for identification.
* value: Must be set to proper value.
* immediately: Optional true/false. Sets value at runtime or at the end of chef run. Default: false.

```ruby
L7_sysctl 'net.ipv4.ip_forward' do
	comment 'Enable ip forwarding'
	value '1'
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

* Freely distributable and licensed under the [MIT license](http://szelcsanyi.mit-license.org/2016/license.html).
* Copyright (c) 2016 Gabor Szelcsanyi

[![image](https://ga-beacon.appspot.com/UA-56493884-1/chef-sysctl/README.md)](https://github.com/szelcsanyi/chef-sysctl)
