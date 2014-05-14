# Do less swapping

sysctl_parameter "vm.swappiness" do
	comment "Do less swapping"
	value "10"
	immediately true
end

sysctl_parameter "vm.dirty_ratio" do
	value "60"
	immediately true
end

sysctl_parameter "vm.dirty_background_ratio" do
	value "2"
	immediately true
end
