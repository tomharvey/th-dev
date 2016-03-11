#
# Cookbook Name:: th-dev
# Recipe:: default
#
# Copyright 2016, Tom Harvey
#
# All rights reserved - Do Not Redistribute
#

include_recipe "sublime-text::default"
include_recipe "rvm::user"
include_recipe "virtualbox"
include_recipe "zip_app::default"
include_recipe "xquartz::default"
include_recipe "nodejs"
include_recipe "vagrant"

nodejs_npm "bootlint"
nodejs_npm "jshint"


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

remote_file '/Users/thomasharvey/Library/Application Support/Sublime Text 3/Installed Packages/Package Control.sublime-package' do
    source 'https://packagecontrol.io/Package%20Control.sublime-package'
    owner 'thomasharvey'
    group 'staff'
    action :create
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

dmg_package 'Skype' do
    dmg_name 'skype'
    volumes_dir 'Skype'
    source 'http://download.skype.com/macosx/d5410ef3de6d9f31d74f1f684db3dfdf/Skype_7.21.350.dmg'
    action :install
end
