#
# Cookbook Name:: sysctl
# Recipe:: default
#
# Copyright 2014, Gabor Szelcsanyi <szelcsanyi.gabor@gmail.com>

package 'procps' do
  action :install
end

service 'procps' do
  supports restart: true, start: true, stop: true
  action :nothing
  subscribes :restart, 'template[/etc/sysctl.conf]', :delayed
end

execute 'Flushing routes' do
  command '/sbin/sysctl -w net.ipv4.route.flush=1'
  action :nothing
  subscribes :run, 'template[/etc/sysctl.conf]', :delayed
end
