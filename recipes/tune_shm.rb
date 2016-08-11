#
# Cookbook Name:: L7-sysctl
# Recipe:: tune_shm
#
# Copyright 2016, Gabor Szelcsanyi <szelcsanyi.gabor@gmail.com>

halfmem = (node['memory']['total'].to_i * 1024 / 2).round
L7_sysctl 'kernel.shmmax' do
  value halfmem
end
