maintainer       'Gabor Szelcsanyi'
maintainer_email 'szelcsanyi.gabor@gmail.com'
license          'MIT'
description      'Configures sysctl'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
name             'sysctl'
version          '0.1.3'

%w( ubuntu debian ).each do |os|
  supports os
end
