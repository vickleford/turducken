require 'minitest/spec'

describe_recipe 'turducken::default' do

  it 'should install apache2' do
    package('apache2').must_be_installed
  end

  it 'should start apache2' do
    service('apache2').must_be_running
  end

end