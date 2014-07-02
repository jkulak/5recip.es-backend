#
# Cookbook Name:: wac-apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apache2'


template 'apache2-conf-security' do
  path     "#{node['apache']['dir']}/conf.d/security.conf"
  source   'security.erb'
  owner    'root'
  group    node['apache']['root_group']
  mode     '0644'
  backup   false
  notifies :reload, 'service[apache2]'
end



# web_app "example" do
#   server_name "www.example.vm"
#   server_aliases ["example.vm"]
#   allow_override "all"
#   docroot "/var/www/html/"
# end