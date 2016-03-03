me = 'thomasharvey'

# Sublime Text version
default['sublime-text']['version']['generation'] = 3
default['sublime-text']['version']['id'] = "Build 3103"

# RVM config
default['rvm']['user_installs'] = [
  { 'user'          => me,
    'default_ruby'  => 'rbx',
    'rubies'        => ['2.2.4']
  }
]