name 'stow'
maintainer 'Steven Haddox'
maintainer_email 'steven.haddox@gmail.com'
license 'MIT'
description 'Installs GNU Stow & provides stow_package resource'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.3.0'

supports 'debian'
supports 'ubuntu'
supports 'centos'
supports 'fedora'
supports 'scientific'
supports 'redhat'

depends 'apt', '~> 2.7.0'
depends 'build-essential', '~> 2.2'
depends 'tar', '~> 0.6.0'
depends 'yum-epel', '~> 0.6.2'

recipe 'stow::default', 'Install GNU stow via package or source installation'
