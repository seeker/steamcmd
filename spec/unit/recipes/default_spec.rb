require 'spec_helper'

describe 'steamcmd::default' do
    context 'On ubuntu' do
		let(:runner) {ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '16.04')}
		let(:chef_run) do
		  runner.converge(described_recipe)
		end
		
		it 'converges successfully' do
		  expect { chef_run }.to_not raise_error
		end
	end
end
