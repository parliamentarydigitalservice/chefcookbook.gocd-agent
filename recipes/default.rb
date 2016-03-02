#
# Cookbook Name:: gocd-server
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

node.override['gocd']['agent']['go_server_host'] = 'gocd.ukpds.org'

include_recipe 'gocd::agent'
