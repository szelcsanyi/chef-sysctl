#
# Cookbook Name:: L7-sysctl
# Recipe:: tcp_congestion_yeah
#
# Copyright 2019, Gabor Szelcsanyi <szelcsanyi.gabor@gmail.com>

# Not in openvz guest
return if File.exist?('/proc/vz')

# Not under kernel version 4.9
kmajor, kminor = node[:kernel][:release].split('.')

if (kmajor.to_i == 4 and kminor.to_i >= 9) or kmajor.to_i > 4

  L7_sysctl 'net.core.default_qdisc' do
    value 'fq'
  end

  L7_sysctl 'net.ipv4.tcp_congestion_control' do
    value 'bbr'
  end

end
