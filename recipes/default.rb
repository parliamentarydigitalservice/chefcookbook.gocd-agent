#
# Cookbook Name:: gocd-server
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

node.override['gocd']['agent']['go_server_host'] = 'gocd.ukpds.org'
node.override['gocd']['agent']['package_file']['url'] = 'https://download.go.cd/binaries/16.2.1-3027/win/go-agent-16.2.1-3027-setup.exe'

include_recipe 'gocd::agent'

# Construct the ".chef" directory.
powershell_script 'write-to-interpolated-path' do
  code <<-EOH
  New-Item -ItemType Directory -Force -Path C:/.chef
  EOH
end

# Drop the knife.rb and client.pem file in the ".chef" directory.
cookbook_file 'C:/.chef/knife.rb' do
  source 'knife.rb'
  action :create_if_missing
end

cookbook_file 'C:/.chef/parliamentary-digital-service-validator.pem' do
  source 'parliamentary-digital-service-validator.pem'
  action :create_if_missing
end

cookbook_file 'C:/.chef/devadasv.pem' do
  source 'devadasv.pem'
  action :create_if_missing
end

# Install the Chef Development Kit and Git.
include_recipe 'chocolatey'
chocolatey 'chefdk'
chocolatey 'git'
