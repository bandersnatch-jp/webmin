require 'spec_helper'

describe 'yum-webmin::default' do
  context 'yum-webmin::default uses default attributes' do
    let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

    it 'creates yum_repository[webmin]' do
      expect(chef_run).to create_yum_repository('webmin')
    end
  end
end
