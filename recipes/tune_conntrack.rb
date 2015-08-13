#
# Cookbook Name:: L7-sysctl
# Recipe:: tune_conntrack
#
# Copyright 2015, Gabor Szelcsanyi <szelcsanyi.gabor@gmail.com>

L7_sysctl 'net.nf_conntrack_max' do
  comment 'Conntrack settings'
  value '9145728'
  immediately true
end

L7_sysctl 'net.netfilter.nf_conntrack_max' do
  value '9145728'
  immediately true
end

L7_sysctl 'net.netfilter.nf_conntrack_tcp_timeout_time_wait' do
  value '10'
  immediately true
end

L7_sysctl 'net.netfilter.nf_conntrack_tcp_timeout_fin_wait' do
  value '10'
  immediately true
end

L7_sysctl 'net.netfilter.nf_conntrack_tcp_timeout_close_wait' do
  value '10'
  immediately true
end
