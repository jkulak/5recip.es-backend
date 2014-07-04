#
# Cookbook Name:: app-recipes-backend
# Recipe:: _common_system
#
# Copyright 2014, WebAsCrazy.net
#
# All rights reserved - Do Not Redistribute


# package "libffi5" do
#   action :install
#   provider Chef::Provider::Package::Apt
# end

# package "ruby-1.9.2" do
#   action :install
#   # source "/tmp/vagrant-chef/cookbooks-0/ruby-1.9.2/files/default/ruby-1.9.2-p290_i386.deb"
#   # provider Chef::Provider::Package::Dpkg
# end


include_recipe 'apt'