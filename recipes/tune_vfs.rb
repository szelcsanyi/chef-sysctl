#
# Cookbook Name:: L7-sysctl
# Recipe:: tune_vfs
#
# Copyright 2015, Gabor Szelcsanyi <szelcsanyi.gabor@gmail.com>

L7_sysctl 'fs.file-max' do
  value '402400'
end

L7_sysctl 'fs.dir-notify-enable' do
  value '0'
end
