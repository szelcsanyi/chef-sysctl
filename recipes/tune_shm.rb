#
# Cookbook Name:: L7-sysctl
# Recipe:: tune_shm
#
# Copyright 2015, Gabor Szelcsanyi <szelcsanyi.gabor@gmail.com>

L7_sysctl 'kernel.shmmax' do
  value (node.memory.total.to_i * 1024 / 2).round
end
