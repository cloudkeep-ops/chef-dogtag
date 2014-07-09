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

default['dogtag']['version'] = '10.2.0'
default['dogtag']['debug'] = true

default['dogtag']['ca']['pki_admin_email'] = 'caadmin@example.com'
default['dogtag']['ca']['pki_admin_name'] = 'caadmin'
default['dogtag']['ca']['pki_admin_nickname'] = 'caadmin'
default['dogtag']['ca']['pki_admin_password'] = 'CHANGE_ME'
default['dogtag']['ca']['pki_admin_uid'] = 'caadmin'
default['dogtag']['ca']['pki_backup_password'] = 'CHANGE_ME'
default['dogtag']['ca']['pki_client_database_password'] = 'CHANGE_ME'
default['dogtag']['ca']['pki_client_database_purge'] = false
default['dogtag']['ca']['pki_client_pkcs12_password'] = 'CHANGE_ME'
default['dogtag']['ca']['pki_clone_pkcs12_password'] = 'CHANGE_ME'
default['dogtag']['ca']['pki_ds_base_dn'] = 'dc=ca,dc=example,dc=com'
default['dogtag']['ca']['pki_ds_database'] = 'ca'
default['dogtag']['ca']['pki_ds_password'] = 'CHANGE_ME'
default['dogtag']['ca']['pki_security_domain_name'] = 'EXAMPLE'
default['dogtag']['ca']['pki_token_password'] = 'CHANGE_ME'

default['dogtag']['kra']['pki_admin_cert_file'] = '/etc/dogtag/pki-tomcat/ca_admin.cert'
default['dogtag']['kra']['pki_admin_email'] = 'kraadmin@example.com'
default['dogtag']['kra']['pki_admin_name'] = 'kraadmin'
default['dogtag']['kra']['pki_admin_nickname'] = 'kraadmin'
default['dogtag']['kra']['pki_admin_password'] = 'CHANGE_ME'
default['dogtag']['kra']['pki_admin_uid'] = 'kraadmin'
default['dogtag']['kra']['pki_backup_password'] = 'CHANGE_ME'
default['dogtag']['kra']['pki_client_database_password'] = 'CHANGE_ME'
default['dogtag']['kra']['pki_client_database_purge'] = false
default['dogtag']['kra']['pki_client_pkcs12_password'] = 'CHANGE_ME'
default['dogtag']['kra']['pki_clone_pkcs12_password'] = 'CHANGE_ME'
default['dogtag']['kra']['pki_ds_base_dn'] = 'dc=kra,dc=example,dc=com'
default['dogtag']['kra']['pki_ds_database'] = 'kra'
default['dogtag']['kra']['pki_ds_password'] = 'CHANGE_ME'
default['dogtag']['kra']['pki_security_domain_name'] = 'EXAMPLE'
default['dogtag']['kra']['pki_security_domain_user'] = 'caadmin'
default['dogtag']['kra']['pki_security_domain_password'] = 'CHANGE_ME'
default['dogtag']['kra']['pki_token_password'] = 'CHANGE_ME'
