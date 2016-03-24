#
# Cookbook Name:: gocd-agent
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

RSpec.configure do |config|
  config.log_level = :debug
  config.platform = 'windows'
  config.version = '2012R2'
end

describe 'gocd-agent::default' do

  before do
    allow_any_instance_of(Chef::Recipe).to receive(:powershell_script).and_return(:garbage)
  end

  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'includes dependent recipes' do
      expect(chef_run).to include_recipe('gocd-agent::install_agent')
    end

  end
end
