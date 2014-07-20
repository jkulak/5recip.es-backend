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

# Due to Apache 2.4 not being supported by the apach2 cookbook, updated template needs to be used
# http://stackoverflow.com/questions/21614113/error-in-template-in-apache-cookbook-when-running-to-an-ubuntu-server/21622365
template 'apache2.conf' do
  case node['platform_family']
  when 'rhel', 'fedora', 'arch'
    path "#{node['apache']['dir']}/conf/httpd.conf"
  when 'debian'
    path "#{node['apache']['dir']}/apache2.conf"
  when 'freebsd'
    path "#{node['apache']['dir']}/httpd.conf"
  end
  source   'apache2.conf.erb'
  owner    'root'
  group    node['apache']['root_group']
  mode     '0644'
  notifies :reload, 'service[apache2]'
end

# To fix NameVirtualHost issue
template "#{node['apache']['dir']}/ports.conf" do
  source   'ports.conf.erb'
  owner    'root'
  group    node['apache']['root_group']
  mode     '0644'
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