#
# Cookbook Name:: app-recipes-backend
# Recipe:: app_server
#
# Copyright 2014, WebAsCrazy.net
#
# All rights reserved - Do Not Redistribute

include_recipe 'apache2'
include_recipe 'apache2::mod_headers'
include_recipe 'apache2::mod_php5'

template 'apache2-conf-security' do
  path     "#{node['apache']['dir']}/conf.d/security.conf"
  source   'security.erb'
  owner    'root'
  group    node['apache']['root_group']
  mode     '0644'
  backup   false
  notifies :reload, 'service[apache2]'
end

# Move custom motd
cookbook_file "/etc/update-motd.d/01-custom" do 
    mode 00755
end

# Create group and users
group node['tests']['group']

user node['tests']['user'] do
  group node['tests']['group']
  system true
  shell '/bin/bash'
end