# No overcommitment of available memory

sysctl_parameter "vm.overcommit_ratio" do
	comment "Disable overcommit"
	value "0"
	immediately true
end

sysctl_parameter "vm.overcommit_memory" do 
	value "0"
	immediately true
end

# Keep at least 64MB of free RAM space available
sysctl_parameter "vm.min_free_kbytes" do 
	value "65536"
	immediately true
end
