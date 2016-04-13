#
# Cookbook Name:: gocd-agent
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe "#{cookbook_name}::install_agent"
include_recipe "#{cookbook_name}::configure_chef_directory"
include_recipe "#{cookbook_name}::install_chocolatey"
