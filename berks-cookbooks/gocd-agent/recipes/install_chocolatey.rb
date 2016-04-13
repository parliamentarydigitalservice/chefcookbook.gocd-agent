#
# Cookbook Name:: gocd-agent
# Recipe:: install_agent
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# Install the Chef Development Kit and Git.
include_recipe 'chocolatey'
chocolatey 'chefdk'
chocolatey 'git'
