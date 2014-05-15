#
# Cookbook Name:: sysctl
# Recipe:: basic_security
#
# Copyright 2014, Gabor Szelcsanyi <szelcsanyi.gabor@gmail.com>

# Controls the System Request debugging functionality of the kernel
sysctl_parameter "kernel.sysrq" do 
	value "0"
	immediately true
end

# Controls whether core dumps will append the PID to the core filename
# Useful for debugging multi-threaded applications
sysctl_parameter "kernel.core_uses_pid" do 
	value "1"
	immediately true
end

# Send redirects, if router, but this is just server
sysctl_parameter "net.ipv4.conf.all.send_redirects" do
	value "0"
	immediately true
end

sysctl_parameter "net.ipv4.conf.default.send_redirects" do
	value "0"
	immediately true
end

# Accept packets with SRR option? No
sysctl_parameter "net.ipv4.conf.all.accept_source_route" do 
	value "0"
	immediately true
end

# Accept Redirects? No
sysctl_parameter "net.ipv4.conf.all.accept_redirects" do 
	value "0"
	immediately true
end

sysctl_parameter "net.ipv4.conf.all.log_martians" do
	value "0"
	immediately true
end
sysctl_parameter "net.ipv4.conf.default.accept_source_route" do 
	value "0"
	immediately true
end
sysctl_parameter "net.ipv4.conf.default.accept_redirects" do 
	value "0"
	immediately true
end

# Ignore all ICMP ECHO and TIMESTAMP requests sent to it via broadcast/multicast
sysctl_parameter "net.ipv4.icmp_echo_ignore_broadcasts" do
	value "1"
	immediately true
end

# Enable source validation by reversed path, as specified in RFC1812
sysctl_parameter "net.ipv4.conf.all.rp_filter" do 
	value "1"
	immediately true
end
sysctl_parameter "net.ipv4.conf.default.rp_filter" do 
	value "1"
	immediately true
end

sysctl_parameter "kernel.randomize_va_space" do
	value "1"
	immediately true
end

#Allow for more PIDs 
sysctl_parameter "kernel.pid_max" do 
	value "65536"
	immediately true
end
