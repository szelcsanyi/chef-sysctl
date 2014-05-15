#
# Cookbook Name:: sysctl
# Recipe:: panic
#
# Copyright 2014, Gabor Szelcsanyi <szelcsanyi.gabor@gmail.com>

sysctl_parameter "kernel.panic" do
        comment "Reboot on panic"
        value "10"
end
