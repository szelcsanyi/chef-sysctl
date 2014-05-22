#
# Cookbook Name:: sysctl
# Recipe:: tune_conntrack
#
# Copyright 2014, Gabor Szelcsanyi <szelcsanyi.gabor@gmail.com>

sysctl_parameter 'net.nf_conntrack_max' do
  comment 'Conntrack settings'
  value '9145728'
  immediately true
end

sysctl_parameter 'net.netfilter.nf_conntrack_max' do
  value '9145728'
  immediately true
end

sysctl_parameter 'net.netfilter.nf_conntrack_tcp_timeout_time_wait' do
  value '10'
  immediately true
end

sysctl_parameter 'net.netfilter.nf_conntrack_tcp_timeout_fin_wait' do
  value '10'
  immediately true
end

sysctl_parameter 'net.netfilter.nf_conntrack_tcp_timeout_close_wait' do
  value '10'
  immediately true
end
