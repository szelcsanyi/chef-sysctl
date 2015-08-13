#
# Cookbook Name:: sysctl
# Recipe:: no_overcommit
#
# Copyright 2015, Gabor Szelcsanyi <szelcsanyi.gabor@gmail.com>

# No overcommitment of available memory
L7_sysctl 'vm.overcommit_ratio' do
  comment 'Disable overcommit'
  value '0'
  immediately true
end

L7_sysctl 'vm.overcommit_memory' do
  value '0'
  immediately true
end

# Keep at least 64MB of free RAM space available
L7_sysctl 'vm.min_free_kbytes' do
  value '65536'
  immediately true
end
