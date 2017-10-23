require 'dockerspec/serverspec'

describe docker_compose('docker-compose.yml', wait: 10) do

  its_container('redis') do
    describe port(6379) do
      it { should be_listening('tcp') }
    end
  end

  its_container('dockerapp') do
    describe package('Flask') do
      it { should be_installed.by('pip').with_version('0.11.1') }
    end
  end

end