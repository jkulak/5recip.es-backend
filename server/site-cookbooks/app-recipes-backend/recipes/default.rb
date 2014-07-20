#
# Cookbook Name:: app-recipes-backend
# Recipe:: default
#
# Copyright 2014, WebAsCrazy.net
#
# All rights reserved - Do Not Redistribute

include_recipe 'app-recipes-backend::_common_system'
include_recipe 'app-recipes-backend::database_server'
include_recipe 'app-recipes-backend::app_server'
include_recipe 'app-recipes-backend::static_files_server'
include_recipe 'app-recipes-backend::drupal'
include_recipe 'app-recipes-backend::nodejs'