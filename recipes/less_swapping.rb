#
# Cookbook Name:: sysctl
# Recipe:: less_swapping
#
# Copyright 2014, Gabor Szelcsanyi <szelcsanyi.gabor@gmail.com>

# Do less swapping
sysctl_parameter 'vm.swappiness' do
  comment 'Do less swapping'
  value '10'
  immediately true
end

sysctl_parameter 'vm.dirty_ratio' do
  value '20'
  immediately true
end

sysctl_parameter 'vm.dirty_background_ratio' do
  value '2'
  immediately true
end

sysctl_parameter 'vm.vfs_cache_pressure' do
  value '10000'
  immediately true
end
