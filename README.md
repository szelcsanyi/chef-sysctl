# sysctl cookbook

## Description

Configures sysctl parameters in /etc/sysctl.conf

## Requirements

### Supported Platforms

* Ubuntu
* Debian

## Recipes

* `sysctl` - The default no-op recipe.
* `basic_securty` - Sets kernel level security settings.
* `disable_ipv6` - If you do not use ipv6 then disable it.
* `enable_forwarding` - Enables ipv4 forwarding.
* `less_swapping` - Decrease swap ratio to 10 for less swapping.
* `no_overcommit` - Do not overcommit available memory.
* `panic` - Reboot on kernel panic.
* `tune_conntrack` - Increase connection tracking buffers.
* `tune_shm` - Increase shm.
* `tune_tck_stack` - Tune tcp stack for higher throughput.
* `tune_vfs` - Tune vfs.

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

**sysctl**

* Freely distributable and licensed under the [MIT license](http://szelcsanyi.mit-license.org/2014/license.html).
