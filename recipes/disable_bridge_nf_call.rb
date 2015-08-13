#
# Cookbook Name:: sysctl
# Recipe:: disable_bridge_nf_call
#
# Copyright 2015, Gabor Szelcsanyi <szelcsanyi.gabor@gmail.com>

L7_sysctl 'net.bridge.bridge-nf-call-arptables' do
  value '0'
end

L7_sysctl 'net.bridge.bridge-nf-call-ip6tables' do
  value '0'
end

L7_sysctl 'net.bridge.bridge-nf-call-iptables' do
  value '0'
end
