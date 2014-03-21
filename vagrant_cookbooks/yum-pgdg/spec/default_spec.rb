require 'spec_helper'

describe 'yum-pgdg::default' do
  context 'yum-pgdg::default uses default attributes' do
    let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

    it 'creates yum_repository[pgdg]' do
      expect(chef_run).to create_yum_repository('pgdg')
    end
  end
end
