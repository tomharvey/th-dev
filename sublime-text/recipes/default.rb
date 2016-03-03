#
# Cookbook Name:: sublime-text
# Recipe:: default
#
# Copyright (C) 2014 Patrick Ayoup
#
# MIT License
#

begin
  include_recipe "sublime-text::platform_#{node[:platform]}"
rescue Chef::Exceptions::RecipeNotFound => e
  log "!!!! This Cookbook does not support #{node[:platform]} :( !!!!"
  raise e
end

