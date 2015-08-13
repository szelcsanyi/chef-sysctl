#
# Cookbook Name:: L7-sysctl
# Recipe:: disable_bridge_nf_call
#
# Copyright 2015, Gabor Szelcsanyi <szelcsanyi.gabor@gmail.com>

L7_sysctl 'net.bridge.bridge-nf-call-arptables' do
  comment 'disable netfilter arptables calls'
  value '0'
end

L7_sysctl 'net.bridge.bridge-nf-call-ip6tables' do
  comment 'disable netfilter ip6tables calls'
  value '0'
end

L7_sysctl 'net.bridge.bridge-nf-call-iptables' do
  comment 'disable netfilter iptables calls'
  value '0'
end
