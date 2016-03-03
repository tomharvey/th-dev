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


dmg_package 'Tunnelblick' do
  source   'https://tunnelblick.net/release/Tunnelblick_3.5.8_build_4270.4530.dmg'
  action   :install
end

dmg_package 'Google Chrome' do
  dmg_name 'googlechrome'
  source   'https://dl-ssl.google.com/chrome/mac/stable/GGRM/googlechrome.dmg'
  action   :install
end