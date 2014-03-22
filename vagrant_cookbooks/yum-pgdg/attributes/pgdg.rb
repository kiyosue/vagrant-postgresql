#version9.3
default['yum']['pgdg93']['version'] = '9.3'
version = node['yum']['pgdg93']['version']

default['yum']['pgdg93']['repositoryid'] = "pgdg-#{version}"
default['yum']['pgdg93']['description'] = "PostgreSQL #{version}"
default['yum']['pgdg93']['gpgkey'] = 'http://yum.postgresql.org/RPM-GPG-KEY-PGDG'
default['yum']['pgdg93']['gpgcheck'] = true
default['yum']['pgdg93']['enabled'] = true

case node['platform_family']
when 'rhel'
  default['yum']['pgdg93']['baseurl'] = "http://yum.pgrpms.org/#{version}/redhat/rhel-$releasever-$basearch"
when 'fedora'
  default['yum']['pgdg93']['baseurl'] = "http://yum.pgrpms.org/#{version}/fedora/fedora-$releasever-$basearch"
end

#version9.2
default['yum']['pgdg92']['version'] = '9.2'
version = node['yum']['pgdg92']['version']

default['yum']['pgdg92']['repositoryid'] = "pgdg-#{version}"
default['yum']['pgdg92']['description'] = "PostgreSQL #{version}"
default['yum']['pgdg92']['gpgkey'] = 'http://yum.postgresql.org/RPM-GPG-KEY-PGDG'
default['yum']['pgdg92']['gpgcheck'] = true
default['yum']['pgdg92']['enabled'] = true

case node['platform_family']
when 'rhel'
  default['yum']['pgdg92']['baseurl'] = "http://yum.pgrpms.org/#{version}/redhat/rhel-$releasever-$basearch"
when 'fedora'
  default['yum']['pgdg92']['baseurl'] = "http://yum.pgrpms.org/#{version}/fedora/fedora-$releasever-$basearch"
end

#version9.1
default['yum']['pgdg91']['version'] = '9.1'
version = node['yum']['pgdg91']['version']

default['yum']['pgdg91']['repositoryid'] = "pgdg-#{version}"
default['yum']['pgdg91']['description'] = "PostgreSQL #{version}"
default['yum']['pgdg91']['gpgkey'] = 'http://yum.postgresql.org/RPM-GPG-KEY-PGDG'
default['yum']['pgdg91']['gpgcheck'] = true
default['yum']['pgdg91']['enabled'] = true

case node['platform_family']
when 'rhel'
  default['yum']['pgdg91']['baseurl'] = "http://yum.pgrpms.org/#{version}/redhat/rhel-$releasever-$basearch"
when 'fedora'
  default['yum']['pgdg91']['baseurl'] = "http://yum.pgrpms.org/#{version}/fedora/fedora-$releasever-$basearch"
end
