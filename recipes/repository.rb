#
# Author:: Eisuke Kozu (<eisuke@bandersnatch.jp>)
# Recipe:: webmin::repository
#
# Copyright 2014, Bandersnatch
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

case node[:platform]
when 'debian','ubuntu'
  include_recipe "apt"
  apt_repository "webmin" do
    retries node['webmin']['package']['install']['retries']
    uri node['webmin']['apt']['baseurl']
    components node['webmin']['apt']['components']
    key node['webmin']['apt']['gpgkey']
    action :add
  end
  apt_repository "webmin-mirror" do
    uri node['webmin']['apt']['mirrorlist']
    components node['webmin']['apt']['components']
    key node['webmin']['apt']['gpgkey']
  end
when 'centos','redhat','fedora','amazon'
  include_recipe "yum"
  yum_repository 'webmin' do
    retries node['webmin']['package']['isntall']['retries']
    description node['webmin']['yum']['description']
    baseurl node['webmin']['yum']['baseurl']
    mirrorlist node['webmin']['yum']['mirrorlist']
    gpgcheck node['webmin']['yum']['gpgcheck']
    gpgkey node['webmin']['yum']['gpgkey']
    enabled node['webmin']['yum']['enabled']
    cost node['webmin']['yum']['cost']
    exclude node['webmin']['yum']['exclude']
    enablegroups node['webmin']['yum']['enablegroups']
    failovermethod node['webmin']['yum']['failovermethod']
    http_caching node['webmin']['yum']['http_caching']
    include_config node['webmin']['yum']['include_config']
    includepkgs node['webmin']['yum']['includepkgs']
    keepalive node['webmin']['yum']['keepalive']
    max_retries node['webmin']['yum']['max_retries']
    metadata_expire node['webmin']['yum']['metadata_expire']
    mirror_expire node['webmin']['yum']['mirror_expire']
    priority node['webmin']['yum']['priority']
    proxy node['webmin']['yum']['proxy']
    proxy_username node['webmin']['yum']['proxy_username']
    proxy_password node['webmin']['yum']['proxy_password']
    repositoryid node['webmin']['yum']['repositoryid']
    sslcacert node['webmin']['yum']['sslcacert']
    sslclientcert node['webmin']['yum']['sslclientcert']
    sslclientkey node['webmin']['yum']['sslclientkey']
    sslverify node['webmin']['yum']['sslverify']
    timeout node['webmin']['yum']['timeout']
    action :create
  end
end
