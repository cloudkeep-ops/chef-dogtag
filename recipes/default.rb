#
# Cookbook Name:: dogtag
# Recipe:: default
#
# Copyright (C) 2014 Rackspace, US Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe '389-ds::server'

yum_repository 'vakwetu-dogtag' do
  description 'Copr repo for dogtag owned by vakwetu'
  baseurl 'http://copr-be.cloud.fedoraproject.org/results/vakwetu/dogtag/fedora-$releasever-$basearch/'
  gpgcheck false
  action :create
end

%w{ pki-ca pki-kra }.each do |pkg|
  package pkg
end

directory '/etc/dogtag' do
  owner 'root'
  group 'root'
  mode 00644
  action :create
end

execute 'pkispawn-ca' do
  command 'pkispawn -v -f /etc/dogtag/ca.cfg -s CA'
  action :nothing
end

execute 'pkispawn-kra' do
  command 'pkispawn -v -f /etc/dogtag/kra.cfg -s KRA'
  action :nothing
end

template '/etc/dogtag/ca.cfg' do
  source 'ca.cfg.erb'
  notifies :run, 'execute[pkispawn-ca]'
end

template '/etc/dogtag/kra.cfg' do
  source 'kra.cfg.erb'
  notifies :run, 'execute[pkispawn-kra]'
end
