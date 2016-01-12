package 'nginx'

# Remove default nginx config
directory "/etc/nginx" do
  recursive true
  action :delete
end

directory '/etc/nginx/conf.d' do
  recursive true
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

template '/etc/nginx/nginx.conf' do
  source 'nginx.conf.erb'
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end

template '/etc/nginx/conf.d/balancing.conf' do
  source 'balancing.conf.erb'
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end

service 'nginx' do
  action :restart
end
