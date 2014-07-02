#
# Cookbook Name:: recipesapp
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

group node['recipesapp']['group']

user node['recipesapp']['user'] do
  group node['recipesapp']['group']
  system true
  shell '/bin/bash'
end