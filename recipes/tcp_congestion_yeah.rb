#
# Cookbook Name:: L7-sysctl
# Recipe:: tcp_congestion_yeah
#
# Copyright 2015, Gabor Szelcsanyi <szelcsanyi.gabor@gmail.com>

# Not in openvz guest
return if File.exist?('/proc/vz')

L7_sysctl 'net.ipv4.tcp_congestion_control' do
  value 'yeah'
end
