# require 'spec_helper'
#
# describe "Dockerfile" do
#   before(:all) do
#     @image = Docker::Image.build_from_dir('../dockerapp')
#
#     set :os, family: :redhat
#     set :backend, :docker
#     set :docker_image, @image.id
#   end
#
#   # describe package('Flask') do
#   #   it { should be_installed.by('pip').with_version('0.11.1')}
#   # end
#
#   describe user('admin') do
#     it { should exist}
#     it { should have_home_directory '/home/admin'}
#   end
#
#   describe file('/etc/hosts') do
#     it { should be_file }
#   end
#
# end

