require 'dockerspec/serverspec'


describe docker_compose('docker-compose.yml', wait: 20, rm: true) do

  its_container(:redis) do

    describe port(6379) do
      it { should be_listening('tcp') }
    end

  end

  its_container(:dockerapp) do

    describe user('admin') do
      it {should exist}
      it {should have_home_directory('/home/admin')}
      it {should have_login_shell('/bin/bash')}
    end

    describe package('Flask') do
      it { should be_installed.by('pip').with_version('0.11.1') }
    end
    describe package('redis') do
      it { should be_installed.by('pip').with_version('2.10.5') }
    end

    describe service('app.py') do
      it {should be_running}
    end
  end

end