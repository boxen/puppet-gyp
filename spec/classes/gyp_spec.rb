require 'spec_helper'

describe 'gyp' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
      :boxen_user => 'testuser'
    }
  end

  it do
    should include_class('homebrew')
    should include_class('scons')

    should contain_homebrew__formula('gyp').
      with_before('Package[boxen/brews/gyp]')

    should contain_package('boxen/brews/gyp').with({
      :install_options => "--HEAD",
      :require         => "Package[boxen/brews/scons]"
    })
  end
end
