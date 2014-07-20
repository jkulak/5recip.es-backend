name             'app-recipe-backend'
maintainer       'WebAsCrazy.net'
maintainer_email 'jakub.kulak@gmail.com'
license          'All rights reserved'
description      'Installs/Configures app-recipe-backend'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'


depends 'apache2'
depends 'apt'
depends 'database'
depends 'nginx'
depends 'nodejs'
