#
# Cookbook Name:: sysctl
# Recipe:: less_swapping
#
# Copyright 2015, Gabor Szelcsanyi <szelcsanyi.gabor@gmail.com>

# Do less swapping
L7_sysctl 'vm.swappiness' do
  comment 'Do less swapping'
  value '10'
  immediately true
end

L7_sysctl 'vm.dirty_ratio' do
  value '20'
  immediately true
end

L7_sysctl 'vm.dirty_background_ratio' do
  value '2'
  immediately true
end

L7_sysctl 'vm.vfs_cache_pressure' do
  value '10000'
  immediately true
end

L7_sysctl 'vm.dirty_expire_centisecs' do
  value '30000'
  immediately true
end
