#
# Cookbook Name:: th-dev
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "sublime-text::default"
include_recipe "rvm::user"
include_recipe "virtualbox"
include_recipe "zip_app::default"


template '/Users/thomasharvey/.gitconfig' do
  source 'gitconfig.erb'
  owner 'thomasharvey'
  group 'staff'
  mode '0755'
end

template '/Users/thomasharvey/.gitignore' do
  source 'gitignore.erb'
  owner 'thomasharvey'
  group 'staff'
  mode '0755'
end

dmg_package 'Tunnelblick' do
  source   'https://tunnelblick.net/release/Tunnelblick_3.5.8_build_4270.4530.dmg'
  action   :install
end

dmg_package 'Google Chrome' do
  dmg_name 'googlechrome'
  source   'https://dl-ssl.google.com/chrome/mac/stable/GGRM/googlechrome.dmg'
  action   :install
end

dmg_package 'Sequel Pro' do
  dmg_name 'sequel-pro'
  volumes_dir 'Sequel Pro 1.1.1'
  source   'https://github.com/sequelpro/sequelpro/releases/download/1.1.1/sequel-pro-1.1.1.dmg'
  action   :install
end
