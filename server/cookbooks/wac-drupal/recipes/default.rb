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