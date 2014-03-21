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

yum_repository 'pgdg' do
  description node['yum']['pgdg']['description']
  baseurl node['yum']['pgdg']['baseurl']
  mirrorlist node['yum']['pgdg']['mirrorlist']
  gpgcheck node['yum']['pgdg']['gpgcheck']
  gpgkey node['yum']['pgdg']['gpgkey']
  enabled node['yum']['pgdg']['enabled']
  cost node['yum']['pgdg']['cost']
  exclude node['yum']['pgdg']['exclude']
  enablegroups node['yum']['pgdg']['enablegroups']
  failovermethod node['yum']['pgdg']['failovermethod']
  http_caching node['yum']['pgdg']['http_caching']
  include_config node['yum']['pgdg']['include_config']
  includepkgs node['yum']['pgdg']['includepkgs']
  keepalive node['yum']['pgdg']['keepalive']
  max_retries node['yum']['pgdg']['max_retries']
  metadata_expire node['yum']['pgdg']['metadata_expire']
  mirror_expire node['yum']['pgdg']['mirror_expire']
  priority node['yum']['pgdg']['priority']
  proxy node['yum']['pgdg']['proxy']
  proxy_username node['yum']['pgdg']['proxy_username']
  proxy_password node['yum']['pgdg']['proxy_password']
  repositoryid node['yum']['pgdg']['repositoryid']
  sslcacert node['yum']['pgdg']['sslcacert']
  sslclientcert node['yum']['pgdg']['sslclientcert']
  sslclientkey node['yum']['pgdg']['sslclientkey']
  sslverify node['yum']['pgdg']['sslverify']
  timeout node['yum']['pgdg']['timeout']
  action :create
end

package "postgresql93-server" do
  action :install
  notifies :run, 'execute[postgres-initdb]'
end

execute 'postgres-initdb' do
  user "postgres"
  command "/usr/pgsql-9.3/bin/initdb -D /var/lib/pgsql/9.3/data --no-locale --encoding=UTF8"
  action :nothing
end

