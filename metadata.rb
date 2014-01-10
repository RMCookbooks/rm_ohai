name             'rm_ohai'
maintainer       'Robert J. Berger'
maintainer_email 'rberger@opscale.com'
license          'All rights reserved'
description      'Installs/Configures rm_ohai'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

%w(ohai client-config).each do |dp|
  depends dp
end

