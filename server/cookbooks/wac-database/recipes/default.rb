#
# Cookbook Name:: wac-database
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "database::mysql"

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
  privileges    [:select,:update,:insert]
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