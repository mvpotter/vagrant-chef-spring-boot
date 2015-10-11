include_recipe 'apt::default'
include_recipe 'postgresql::server'
include_recipe 'java_app::launch'
include_recipe 'java_app::webserver'
