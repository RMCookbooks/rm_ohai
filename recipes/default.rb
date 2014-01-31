#
# Cookbook Name:: rm_ohai
# Recipe:: default
#
# Copyright (C) 2014 Robert J. Berger
# 
# All rights reserved - Do Not Redistribute
#

# Tells the ohai cookbook to tell the chef-client cookbook to set the Ohai::Config[:plugin_path] in the node's client.rb
node.default['ohai']['plugin_path'] = "/etc/chef/ohai_plugins"

# Tells the ohai cookbook to use the plugins in this cookbook as the source for the plugins to install
node.default['ohai']['plugins']['rm_ohai'] = "plugins"

cookbook_file "#{node['ohai']['plugin_path']}/rm_ohai_ipaddress.rb" do
  source 'plugins/rm_ohai_ipaddress.rb'
  owner  'root'
  group  'root'
  mode   '0755'
end

include_recipe 'ohai::default'
include_recipe 'chef-client::config'
