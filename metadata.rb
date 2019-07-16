name 'chefsrv'
maintainer 'Ed Overton'
maintainer_email 'infuse.1301@gmail.com'
license 'Apache 2.0'
description 'Installs/Configures chefsrv'
long_description 'Installs/Configures chefsrv'
version '0.2.1'
chef_version '>= 14.0' if respond_to?(:chef_version)

supports 'redhat'
supports 'centos'

depends 'chef-server'
