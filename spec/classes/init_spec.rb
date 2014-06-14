require 'spec_helper'
describe 'motd' do

  context 'on a linux system' do
    let(:facts) {{ :kernel                 => 'linux',
                  :hostname                => 'testhost',
                  :domain                  => 'somedomain',
                  :puppetversion           => '3.3.3',
                  :environment             => 'testenv',
                  :operatingsystem         => 'someos',
                  :operatingsystemrelease => 'somerelease',
                  :architecture            => 'manybits', }}

    it { should contain_class('motd') }
    it do
      should contain_file('/etc/motd').with(
        { 'ensure'  => 'file', }
      )
    end
    ['testhost','somedomain','3.3.3','testenv','someos','somerelease','manybits'].each { |important|
      it do
        should contain_file('/etc/motd').with(
          { 'content' => /#{important}/, },
        )
      end
    }
  end

  context "not on a linux system" do
    let(:facts) {{ :kernel => 'exoticOS', }}

    it { should contain_class('motd') }
    it { should_not contain_file('/etc/motd') }
  end

end

