name             'dogtag'
maintainer       'Rackspace, US Inc.'
maintainer_email 'cloudkeep@googlegroups.com'
license          'Apache 2.0'
description      'Installs/Configures DogTag'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.1'
supports         'fedora', '= 20'

depends          'yum'
depends          '389-ds'
