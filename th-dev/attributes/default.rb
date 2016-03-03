my_username = 'thomasharvey'

# RVM options
my_rubies = ['2.2.4']

# VirtualBox Options
vbox_version_required = "5.0.14"
vbox_build_required = "105127"

# Sublime Text version
default['sublime-text']['version']['generation'] = 3
default['sublime-text']['version']['id'] = "Build 3103"


### ZIP application installs
#
default['zip_app']['apps'] = [
  { 'name'      => 'slack',
    'source'    => 'https://slack-ssb-updates.global.ssl.fastly.net/mac_public_releases/slack-2.0.0.zip'
  }
]


### Advanced options
###

# RVM config
default['rvm']['user_installs'] = [
  { 'user'          => my_username,
    'default_ruby'  => my_rubies[0],
    'rubies'        => my_rubies
  }
]

# Virtualbox install
case node['platform_family']
when 'mac_os_x'
  default['virtualbox']['url'] = "http://download.virtualbox.org/virtualbox/#{vbox_version_required}/VirtualBox-#{vbox_version_required}-#{vbox_build_required}-OSX.dmg"
when 'windows'
  default['virtualbox']['url'] = "http://download.virtualbox.org/virtualbox/#{vbox_version_required}/VirtualBox-#{vbox_version_required}-#{vbox_build_required}-win.exe"
  default['virtualbox']['version'] = Vbox::Helpers.vbox_version(node['virtualbox']['url'])
when 'debian', 'rhel', 'fedora'
  default['virtualbox']['version'] = version_required
end

