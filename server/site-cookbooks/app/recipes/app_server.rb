#
# Cookbook Name:: app-recipes-backend
# Recipe:: app_server
#
# Copyright 2014, WebAsCrazy.net
#
# All rights reserved - Do Not Redistribute

include_recipe 'apache2'
include_recipe 'apache2::mod_headers'
include_recipe 'apache2::mod_php5'
include_recipe 'apache2::mod_rewrite'

# Move custom motd
cookbook_file "/etc/update-motd.d/01-custom" do
    mode 00755
end

# Required by Drupal
package 'php5-gd'
package 'php5-mysql'
package 'php5-common'

# Vhosts

web_app "5recip.es" do
  server_name "5recip.es.vmx"
  server_aliases ["www.5recip.es.vmx"]
  allow_override "All"
  docroot "/var/www/5recip.es/www"
  server_port "44444"
end
