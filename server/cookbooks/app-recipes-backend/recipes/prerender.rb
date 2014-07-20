#
# Cookbook Name:: app-recipes-backend
# Recipe:: prerender
#
# Copyright 2014, WebAsCrazy.net
#
# All rights reserved - Do Not Redistribute

include_recipe 'apt'

package "git" do
  action :install
end

# Run Prerender.io server on port 3000

script "install_something" do
  interpreter "bash"
  user "root"
  cwd "/var/www"
  code <<-EOH
  git clone https://github.com/prerender/prerender.git
  cd prerender
  npm install
  node server.js
  EOH
end