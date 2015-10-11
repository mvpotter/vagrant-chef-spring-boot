include_recipe 'firewall::default'
include_recipe 'nginx::default'

# Open port 80 to incoming traffic.
firewall_rule 'http' do
  port 80
  protocol :tcp
  command :allow
end

template "#{node.nginx.dir}/sites-available/java_app" do
  source "nginx.java_app.erb"
  mode 0644
  owner node.nginx.user
  group node.nginx.user
end

nginx_site "java_app"