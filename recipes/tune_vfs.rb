#
# Cookbook Name:: sysctl
# Recipe:: tune_vfs
#
# Copyright 2014, Gabor Szelcsanyi <szelcsanyi.gabor@gmail.com>

sysctl_parameter 'fs.file-max' do
  value '402400'
end

sysctl_parameter 'fs.dir-notify-enable' do
  value '0'
end
