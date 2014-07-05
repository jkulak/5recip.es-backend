# 'node.default' is same as 'default'
# node.default['recipesapp']['user'] = 'myface'

default['tests']['group'] = 'www'
default['tests']['user'] = 'www'


# removing authz_default from defaults as it was removed in Apache 2.4 and the change is not yet supported by apache2 cookbook out of the box
node.default['apache']['default_modules'] = %w[
  status alias auth_basic authn_file authz_groupfile authz_host authz_user autoindex
  dir env mime negotiation setenvif
]

node.default['apache']['docroot_dir'] = '/var/www'
node.default['apache']['server_name'] = 'localhostx'

default['apache']['error_log'] = 'twojastara.log'