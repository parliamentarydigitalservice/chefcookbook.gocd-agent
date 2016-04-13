#
# Cookbook Name:: gocd-agent
# Recipe:: install_agent
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

node.override['gocd']['agent']['go_server_host'] = 'gocd.ukpds.org'
node.override['gocd']['agent']['package_file']['url'] = 'https://download.go.cd/binaries/16.2.1-3027/win/go-agent-16.2.1-3027-setup.exe'

include_recipe 'gocd::agent'
