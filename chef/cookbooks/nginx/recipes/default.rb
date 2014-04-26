root_dir    = ENV['PROJECT_ROOT']
config_root = "#{root_dir}/config/nginx"
config_d    = "#{config_root}/conf.d"
_user       = node[:current_user]

template "/etc/yum.repos.d/nginx.repo" do
  owner   "root"
  mode    0644
  source  "nginx.repo.erb"
  only_if { node[:platform_family].include?("rhel") }
end

package "nginx" do
  action  :install
  only_if { node[:platform_family].include?("rhel") }
end

template "#{config_root}/nginx.conf" do
  owner  _user
  mode   0644
  source "nginx.conf.erb"
end

template "#{config_root}/mime.types" do
  owner  _user
  mode   0644
  source "mime.types.erb"
end

directory "#{root_dir}/var/log/nginx" do
  owner     _user
  mode      0777
  recursive true
end

directory "#{root_dir}/var/run" do
  owner     _user
  mode      0777
  recursive true
end

directory "#{config_root}/conf.d" do
  owner _user
  mode  0755
end

node[:nginx][:vhosts].each do |vhost|
  app = vhost.keys.pop
  
  template "#{config_d}/#{app}.conf" do
    owner     _user
    mode      0644
    source    "#{app}.conf.erb"
    variables ({:vhost_attr => vhost[app]})
  end
end

service "nginx" do
  action  [:enable, :start]
  only_if { node[:platform_family].include?("rhel") }
end
