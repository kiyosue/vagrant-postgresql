#
# Author:: Sean OMeara (<someara@getchef.com>)
# Recipe:: yum-pgdg::default
#
# Copyright 2013, Chef
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

yum_repository 'pgdg93' do
  description node['yum']['pgdg93']['description']
  baseurl node['yum']['pgdg93']['baseurl']
  mirrorlist node['yum']['pgdg93']['mirrorlist']
  gpgcheck node['yum']['pgdg93']['gpgcheck']
  gpgkey node['yum']['pgdg93']['gpgkey']
  enabled node['yum']['pgdg93']['enabled']
  cost node['yum']['pgdg93']['cost']
  exclude node['yum']['pgdg93']['exclude']
  enablegroups node['yum']['pgdg93']['enablegroups']
  failovermethod node['yum']['pgdg93']['failovermethod']
  http_caching node['yum']['pgdg93']['http_caching']
  include_config node['yum']['pgdg93']['include_config']
  includepkgs node['yum']['pgdg93']['includepkgs']
  keepalive node['yum']['pgdg93']['keepalive']
  max_retries node['yum']['pgdg93']['max_retries']
  metadata_expire node['yum']['pgdg93']['metadata_expire']
  mirror_expire node['yum']['pgdg93']['mirror_expire']
  priority node['yum']['pgdg93']['priority']
  proxy node['yum']['pgdg93']['proxy']
  proxy_username node['yum']['pgdg93']['proxy_username']
  proxy_password node['yum']['pgdg93']['proxy_password']
  repositoryid node['yum']['pgdg93']['repositoryid']
  sslcacert node['yum']['pgdg93']['sslcacert']
  sslclientcert node['yum']['pgdg93']['sslclientcert']
  sslclientkey node['yum']['pgdg93']['sslclientkey']
  sslverify node['yum']['pgdg93']['sslverify']
  timeout node['yum']['pgdg93']['timeout']
  action :create
end

package "postgresql93-server" do
  action :install
  notifies :run, 'execute[postgres93-initdb]'
end

execute 'postgres93-initdb' do
  user "postgres"
  command "/usr/pgsql-9.3/bin/initdb -D /var/lib/pgsql/9.3/data --no-locale --encoding=UTF8"
  action :nothing
end

template "/var/lib/pgsql/9.3/data/postgresql.conf" do
  source "postgresql93.conf.erb"
  owner "postgres"
  group "postgres"
  mode 0600
#  notifies :restart, 'service[postgresql-9.3]'
end


yum_repository 'pgdg92' do
  description node['yum']['pgdg92']['description']
  baseurl node['yum']['pgdg92']['baseurl']
  mirrorlist node['yum']['pgdg92']['mirrorlist']
  gpgcheck node['yum']['pgdg92']['gpgcheck']
  gpgkey node['yum']['pgdg92']['gpgkey']
  enabled node['yum']['pgdg92']['enabled']
  cost node['yum']['pgdg92']['cost']
  exclude node['yum']['pgdg92']['exclude']
  enablegroups node['yum']['pgdg92']['enablegroups']
  failovermethod node['yum']['pgdg92']['failovermethod']
  http_caching node['yum']['pgdg92']['http_caching']
  include_config node['yum']['pgdg92']['include_config']
  includepkgs node['yum']['pgdg92']['includepkgs']
  keepalive node['yum']['pgdg92']['keepalive']
  max_retries node['yum']['pgdg92']['max_retries']
  metadata_expire node['yum']['pgdg92']['metadata_expire']
  mirror_expire node['yum']['pgdg92']['mirror_expire']
  priority node['yum']['pgdg92']['priority']
  proxy node['yum']['pgdg92']['proxy']
  proxy_username node['yum']['pgdg92']['proxy_username']
  proxy_password node['yum']['pgdg92']['proxy_password']
  repositoryid node['yum']['pgdg92']['repositoryid']
  sslcacert node['yum']['pgdg92']['sslcacert']
  sslclientcert node['yum']['pgdg92']['sslclientcert']
  sslclientkey node['yum']['pgdg92']['sslclientkey']
  sslverify node['yum']['pgdg92']['sslverify']
  timeout node['yum']['pgdg92']['timeout']
  action :create
end

package "postgresql92-server" do
  action :install
  notifies :run, 'execute[postgres92-initdb]'
end

execute 'postgres92-initdb' do
  user "postgres"
  command "/usr/pgsql-9.2/bin/initdb -D /var/lib/pgsql/9.2/data --no-locale --encoding=UTF8"
  action :nothing
end

template "/var/lib/pgsql/9.2/data/postgresql.conf" do
  source "postgresql92.conf.erb"
  owner "postgres"
  group "postgres"
  mode 0600
#  notifies :restart, 'service[postgresql-9.2]'
end


yum_repository 'pgdg91' do
  description node['yum']['pgdg91']['description']
  baseurl node['yum']['pgdg91']['baseurl']
  mirrorlist node['yum']['pgdg91']['mirrorlist']
  gpgcheck node['yum']['pgdg91']['gpgcheck']
  gpgkey node['yum']['pgdg91']['gpgkey']
  enabled node['yum']['pgdg91']['enabled']
  cost node['yum']['pgdg91']['cost']
  exclude node['yum']['pgdg91']['exclude']
  enablegroups node['yum']['pgdg91']['enablegroups']
  failovermethod node['yum']['pgdg91']['failovermethod']
  http_caching node['yum']['pgdg91']['http_caching']
  include_config node['yum']['pgdg91']['include_config']
  includepkgs node['yum']['pgdg91']['includepkgs']
  keepalive node['yum']['pgdg91']['keepalive']
  max_retries node['yum']['pgdg91']['max_retries']
  metadata_expire node['yum']['pgdg91']['metadata_expire']
  mirror_expire node['yum']['pgdg91']['mirror_expire']
  priority node['yum']['pgdg91']['priority']
  proxy node['yum']['pgdg91']['proxy']
  proxy_username node['yum']['pgdg91']['proxy_username']
  proxy_password node['yum']['pgdg91']['proxy_password']
  repositoryid node['yum']['pgdg91']['repositoryid']
  sslcacert node['yum']['pgdg91']['sslcacert']
  sslclientcert node['yum']['pgdg91']['sslclientcert']
  sslclientkey node['yum']['pgdg91']['sslclientkey']
  sslverify node['yum']['pgdg91']['sslverify']
  timeout node['yum']['pgdg91']['timeout']
  action :create
end

package "postgresql91-server" do
  action :install
  notifies :run, 'execute[postgres91-initdb]'
end

execute 'postgres91-initdb' do
  user "postgres"
  command "/usr/pgsql-9.1/bin/initdb -D /var/lib/pgsql/9.1/data --no-locale --encoding=UTF8"
  action :nothing
end

template "/var/lib/pgsql/9.1/data/postgresql.conf" do
  source "postgresql91.conf.erb"
  owner "postgres"
  group "postgres"
  mode 0600
#  notifies :restart, 'service[postgresql-9.1]'
end

