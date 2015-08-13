#
# Cookbook Name:: sysctl
# Recipe:: tcp_congestion_yeah
#
# Copyright 2015, Gabor Szelcsanyi <szelcsanyi.gabor@gmail.com>

bash 'insert tcp-yeah kernel module' do
  user 'root'
  code <<-EOH
  modprobe tcp-yeah
  EOH
  not_if 'lsmod | grep -cq tcp_yeah'
end

bash 'add tcp-yeah module to modules' do
  user 'root'
  code <<-EOH
  echo 'tcp-yeah' >> /etc/modules
  EOH
  not_if 'grep "^tcp-yeah$" /etc/modules'
end

L7_sysctl 'net.ipv4.tcp_congestion_control' do
  value 'yeah'
end
