#
# Cookbook Name:: tests
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# Move custom motd
cookbook_file "/etc/update-motd.d/01-custom" do 
    mode 00755
end