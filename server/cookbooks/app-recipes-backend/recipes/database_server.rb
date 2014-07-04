#
# Cookbook Name:: app-recipes-backend
# Recipe:: database_server
#
# Copyright 2014, WebAsCrazy.net
#
# All rights reserved - Do Not Redistribute
# 

# Needed to install mysql
apt_package "ruby-dev" do
  action :install
end

include_recipe "database::mysql"
include_recipe "mysql::server"

mysql_connection_info = {
  :host     => 'localhost',
  :username => 'root',
  :password => node['mysql']['server_root_password']
}

# Create databases

mysql_database 'my_db' do
  connection mysql_connection_info
  action :create
end 

# Create users 

# Create a mysql user but grant no privileges
mysql_database_user 'www' do
  connection mysql_connection_info
  password   'www'
  action     :create
end

# Grant privilages
mysql_database_user 'www' do
  connection    mysql_connection_info
  password      'www'
  database_name 'my_db'
  host          '%'
  # privileges    [:create,:select,:update,:insert]
  privileges    [:delete,:drop,:create,:select,:update,:insert]
  action        :grant
end

# Copy sql files 

# Import sql files

# Query a database

mysql_database 'flush the privileges' do
  connection mysql_connection_info
  sql        'flush privileges'
  action     :query
end