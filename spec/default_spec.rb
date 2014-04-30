require 'chefspec'
require 'chefspec/berkshelf'

describe 'turducken::default' do
  before do
    Fauxhai.mock(platform:'ubuntu', version:'12.04')
  end

  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }
  
  it 'apache2 package installed' do
    expect(chef_run).to install_package('apache2')
  end

  it 'apache2 service enabled' do
    expect(chef_run).to enable_service('apache2')
  end

end
