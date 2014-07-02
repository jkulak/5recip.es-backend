#
# Cookbook Name:: wac-php
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# include_recipe "php"

# # update the main pear channel
# php_pear_channel 'pear.php.net' do
#   action :update
# end

# # install the gd pecl
# php_pear "gd" do
#   action :install
# end

apt_package "php5-gd" do
  action :install
end

apt_package "php5-mysql" do
  action :install
end

apt_package "php5-common" do
  action :install
end

apt_package "ruby-dev" do
  action :install
end