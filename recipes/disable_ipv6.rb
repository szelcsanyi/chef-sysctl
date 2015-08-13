#
# Cookbook Name:: L7-sysctl
# Recipe:: disable_ipv6
#
# Copyright 2015, Gabor Szelcsanyi <szelcsanyi.gabor@gmail.com>

L7_sysctl 'net.ipv6.conf.all.disable_ipv6' do
  comment 'disable ipv6'
  value '1'
  immediately true
end

L7_sysctl 'net.ipv6.conf.default.disable_ipv6' do
  value '1'
  immediately true
end

L7_sysctl 'net.ipv6.conf.lo.disable_ipv6' do
  value '1'
  immediately true
end
