# Copyright 2015, Gabor Szelcsanyi <szelcsanyi.gabor@gmail.com>

define :L7_sysctl, comment: '', immediately: false do
  t = nil
  begin
    t = resources(template: '/etc/sysctl.conf')
  rescue Chef::Exceptions::ResourceNotFound
    t = template '/etc/sysctl.conf' do
      mode '0644'
      owner 'root'
      group 'root'
      source 'etc/sysctl.conf.erb'
      cookbook 'L7-sysctl'
      variables(parameters: [])
    end
  end

  t.variables[:parameters] = t.variables[:parameters].reject do
    |h| params[:name] == h[:name]
  end << {
    name: params[:name],
    value: params[:value],
    comment: params[:comment]
  }

  paramfile = '/proc/sys/' + params[:name].tr('.', '/')

  if params[:immediately]
    r = execute "Set sysctl value for #{params[:name]} to #{params[:value]}" do
      Chef::Log.info("Sysctl: Setting #{params[:name]} to #{params[:value]}")
      command "/sbin/sysctl -w '#{params[:name]}=#{params[:value]}'"
      action :nothing
      only_if do
        File.exist?(paramfile) && File.read(paramfile).strip != params[:value]
      end
    end
    r.run_action(:run)
  end
end
