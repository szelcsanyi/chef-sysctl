#
# Cookbook Name:: sysctl
# Recipe:: enable_forwarding
#
# Copyright 2015, Gabor Szelcsanyi <szelcsanyi.gabor@gmail.com>

L7_sysctl 'net.ipv4.ip_forward' do
  comment 'Enable ip forwarding'
  value '1'
  immediately true
end
