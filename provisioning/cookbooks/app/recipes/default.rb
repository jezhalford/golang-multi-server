package 'upstart'

user 'sample' do
  comment 'sample app user'
end

directory '/var/www' do
  recursive true
  owner 'sample'
  group 'sample'
  mode '0755'
  action :create
end

directory '/var/log/sample' do
  recursive true
  owner 'sample'
  group 'sample'
  mode '0755'
  action :create
end


template '/etc/init/sample.conf' do
  source 'sample.conf.erb'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
