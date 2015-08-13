#
# Cookbook Name:: L7-sysctl
# Recipe:: panic
#
# Copyright 2015, Gabor Szelcsanyi <szelcsanyi.gabor@gmail.com>

L7_sysctl 'kernel.panic' do
  comment 'Reboot on panic'
  value '10'
end
