#
# Cookbook Name:: rm_ohai
# Recipe:: default
#
# Copyright (C) 2014 Robert J. Berger
# 
# All rights reserved - Do Not Redistribute
#

# Tells the ohai cookbook to tell the chef-client cookbook to set the Ohai::Config[:plugin_path] in the node's client.rb
default.node['ohai']['plugin_path'] = "/etc/chef/ohai_plugins"

# Tells the ohai cookbook to use the plugins in this cookbook as the source for the plugins to install
default.node['ohai']['plugins']['rm_ohai'] = "plugins"

include_recipe 'ohai::defualt'
include_recipe 'chef-client::config'
