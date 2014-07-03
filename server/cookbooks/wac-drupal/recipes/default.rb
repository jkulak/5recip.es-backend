#
# Cookbook Name:: wac-drupal
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# Duh! I can't change rights outside the VM

# directory node['apache']['docroot_dir'] + "/html/sites/default/files" do
#   owner "root"
#   group "root"
#   mode 00777
#   action :create
# end

# Bootstrapping based on Drupal requirements

apt_package "php5-gd" do
  action :install
end

apt_package "php5-mysql" do
  action :install
end

apt_package "php5-common" do
  action :install
end