define :sysctl_parameter, :comment => "", :immediately => false do

	t = nil
	begin
		t = resources(:template => "/etc/sysctl.conf")
	rescue Chef::Exceptions::ResourceNotFound
		t = template "/etc/sysctl.conf" do
			mode "0644"
			owner "root"
			group "root"
			source "etc/sysctl.conf.erb"
			cookbook "sysctl"
			variables( :parameters => [] )
		end
	end

	t.variables[:parameters] = t.variables[:parameters].reject() { |h| params[:name] == h[:name] } << {
		:name => params[:name],
		:value => params[:value],
		:comment => params[:comment]
	}

	paramfile = "/proc/sys/" + params[:name].tr(".","/")

	if params[:immediately]
		r = execute "Setting sysctl value for #{params[:name]} to #{params[:value]}" do
			Chef::Log.info("Sysctl: Setting #{params[:name]} to #{params[:value]}")
			command "/sbin/sysctl -w '#{params[:name]}=#{params[:value]}'"
			action :nothing
			only_if do ::File.exists?(paramfile) and File.read(paramfile).strip != params[:value] end
		end
		r.run_action(:run)
	end

end
