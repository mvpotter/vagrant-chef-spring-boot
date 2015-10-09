include_recipe 'firewall::default'
include_recipe 'nginx::default'

# Open port 80 to incoming traffic.
firewall_rule 'http' do
  port 80
  protocol :tcp
  command :allow
end

resources('template[nginx.conf]').cookbook 'java_app'