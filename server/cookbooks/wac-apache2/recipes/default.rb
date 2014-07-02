#
# Cookbook Name:: wac-apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

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