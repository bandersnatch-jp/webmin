#
# Author:: Eisuke Kozu (<eisuke@bandersnatch.jp>)
# Recipe:: webmin::default
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

#include_recipe "webmin::repository"
#include_recipe "webmin::install"

#execute "init password of webmin root as #{node[:webmin][:root_password]}" do
#  case node[:platform]
#  when 'debian','ubuntu'
#    command "/usr/share/webmin/changepass.pl /etc/webmin root #{node[:webmin][:root_password]}"
#  when 'centos','redhat','fedora','amazon'
#    command "/usr/libexec/webmin/changepass.pl /etc/webmin root #{node[:webmin][:root_password]}"
#  end
#end
