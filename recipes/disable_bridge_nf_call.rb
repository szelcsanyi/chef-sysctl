#
# Cookbook Name:: sysctl
# Recipe:: disable_bridge_nf_call
#
# Copyright 2014, Gabor Szelcsanyi <szelcsanyi.gabor@gmail.com>

sysctl_parameter 'net.bridge.bridge-nf-call-arptables' do
        value '0'
end

sysctl_parameter 'net.bridge.bridge-nf-call-ip6tables' do
        value '0'
end

sysctl_parameter 'net.bridge.bridge-nf-call-iptables' do
        value '0'
end
