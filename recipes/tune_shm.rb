#
# Cookbook Name:: sysctl
# Recipe:: tune_shm
#
# Copyright 2014, Gabor Szelcsanyi <szelcsanyi.gabor@gmail.com>

sysctl_parameter "kernel.shmmax" do
	value "134217728"
end
