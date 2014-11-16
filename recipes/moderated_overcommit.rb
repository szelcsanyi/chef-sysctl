#
# Cookbook Name:: sysctl
# Recipe:: moderated_overcommit
#
# Copyright 2014, Gabor Szelcsanyi <szelcsanyi.gabor@gmail.com>

# Moderated overcommitment of available memory
sysctl_parameter 'vm.overcommit_ratio' do
  comment 'Moderated overcommit'
  value '80'
  immediately true
end

sysctl_parameter 'vm.overcommit_memory' do
  value '2'
  immediately true
end
