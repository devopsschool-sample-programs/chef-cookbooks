#
# Cookbook:: webserver
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.


cookbook_file '/opt/deploy.sh' do
  source 'deploy.sh'
  action :create
end


