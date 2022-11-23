#
# Cookbook:: webserver
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.

#node.default['devopsschool']['message'] = 'Hello People'

#How to call another recipe from default.rb


log "I am in db server:  #{node['devopsschool']['message']}'!" do
  level :info
end


