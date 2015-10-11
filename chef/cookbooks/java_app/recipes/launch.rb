include_recipe 'java::default'
include_recipe 'maven::default'

execute 'maven_build' do
	cwd '/vagrant'
	command 'mvn clean install'
end

template '/tmp/launch' do
  mode '0755'
  source 'launch.erb'
end

execute 'launch_app' do
	cwd '/vagrant/target'
	command 'nohup java -jar /vagrant/target/external-views-0.0.1-SNAPSHOT.jar & > /var/log/java_app.log'
end