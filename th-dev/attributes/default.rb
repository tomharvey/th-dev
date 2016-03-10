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
  { 'name'      => 'Slack',
    'source'    => 'https://slack-ssb-updates.global.ssl.fastly.net/mac_public_releases/slack-2.0.0.zip'
  },
  { 'name'		=> 'PSequel',
  	'source'	=> 'https://dl.dropboxusercontent.com/u/60578634/PSequel.1.4.3.app.zip'
  },
  { 'name'		=> 'SQLPro for MSSQL',
  	'source'	=> 'https://d3fwkemdw8spx3.cloudfront.net/mssql/SQLProMSSQL.1.0.25i.app.zip'
  },
  { 'name' 		=> 'Cyberduck',
    'source'	=> 'https://update.cyberduck.io/Cyberduck-4.8.3.19083.zip'
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

