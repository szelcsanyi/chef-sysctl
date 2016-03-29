#
# Cookbook Name:: L7-sysctl
# Recipe:: tcp_fastopen
#
# Copyright 2015, Gabor Szelcsanyi <szelcsanyi.gabor@gmail.com>

L7_sysctl 'net.ipv4.tcp_fastopen' do
  comment 'Enable client/server side tcp fastopen'
  value '3'
  immediately true
end

require "digest/md5"
checksum   = Digest::MD5.hexdigest(node['fqdn'] + '-hostname')
fastopen_key = checksum[0, 8] + '-' + checksum[8, 8] + '-' + checksum[16, 8] + '-' + checksum[24, 8]

L7_sysctl 'net.ipv4.tcp_fastopen_key' do
  comment 'Set fastopen key to a hostname based value'
  value fastopen_key
  immediately true
end

