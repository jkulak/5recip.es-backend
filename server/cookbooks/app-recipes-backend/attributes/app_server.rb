# 'node.default' is same as 'default'
# node.default['recipesapp']['user'] = 'myface'

default['tests']['group'] = 'www'
default['tests']['user'] = 'www'


# removing authz_default from defaults as it was removed in Apache 2.4 and the change is not yet supported by apache2 cookbook out of the box
default['apache']['default_modules'] = %w[
  status alias auth_basic authn_file authz_groupfile authz_host authz_user autoindex
  dir env mime negotiation rewrite setenvif
]

default['apache']['docroot_dir'] = '/var/www'
default['apache']['server_name'] = 'localhostxman'

default['apache']['error_log'] = 'error_log.twojastara.log'