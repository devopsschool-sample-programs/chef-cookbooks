#
# Cookbook:: webserver
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.

#node.default['devopsschool']['message'] = 'Hello People'

#How to call another recipe from default.rb

include_recipe '::log'
include_recipe 'dbserver'

package 'httpd'

file '/var/www/html/index.html' do
  content "Welcome to Chef Class - cookbooks"
end

service 'httpd' do
  action :start
end

log "Welcome to Chef, #{node['devopsschool']['message']}'!" do
  level :info
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
end


