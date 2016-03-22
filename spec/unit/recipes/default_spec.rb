#
# Cookbook Name:: gocd-agent
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'gocd-agent::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
      runner.node.set['gocd']['agent']['go_server_host'] = 'gocd.ukpds.org'
      runner.node.set['gocd']['agent']['package_file']['url'] = 'https://download.go.cd/binaries/16.2.1-3027/win/go-agent-16.2.1-3027-setup.exe'
    end

    it 'includes dependent recipes' do
      expect(chef_run).to include_recipe('gocd::agent')
    end
  end
end
