
sysctl_parameter "net.ipv6.conf.all.disable_ipv6" do
	comment "disable ipv6"
	value "1"
	immediately true
end

sysctl_parameter "net.ipv6.conf.default.disable_ipv6" do
	value "1"
	immediately true
end

sysctl_parameter "net.ipv6.conf.lo.disable_ipv6" do
	value "1"
	immediately true
end
