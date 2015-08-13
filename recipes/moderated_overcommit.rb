#
# Cookbook Name:: L7-sysctl
# Recipe:: moderated_overcommit
#
# Copyright 2015, Gabor Szelcsanyi <szelcsanyi.gabor@gmail.com>

# Moderated overcommitment of available memory
L7_sysctl 'vm.overcommit_ratio' do
  comment 'Moderated overcommit'
  value '80'
  immediately true
end

L7_sysctl 'vm.overcommit_memory' do
  value '2'
  immediately true
end
