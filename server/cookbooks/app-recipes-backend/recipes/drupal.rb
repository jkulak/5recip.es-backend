#
# Cookbook Name:: app-recipes-backend
# Recipe:: drupal
#
# Copyright 2014, WebAsCrazy.net
#
# All rights reserved - Do Not Redistribute

# apt_package "php5-gd" do
#   action :install
# end

# apt_package "php5-mysql" do
#   action :install
# end

# apt_package "php5-common" do
#   action :install
# end

# Needed by Drupal
package 'php5-gd'
package 'php5-mysql'
package 'php5-common'