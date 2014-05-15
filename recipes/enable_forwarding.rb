#
# Cookbook Name:: sysctl
# Recipe:: enable_forwarding
#
# Copyright 2014, Gabor Szelcsanyi <szelcsanyi.gabor@gmail.com>

sysctl_parameter "net.ipv4.ip_forward" do
	comment "Enable ip forwarding"
	value "1"
	immediately true
end
