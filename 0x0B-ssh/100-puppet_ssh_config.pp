#!/usr/bin/pup
# Seting up my client config file
include stdlib

file_line { 'Turn off password':
  ensure  => present,
  path    => '/etc/.ssh/ssh_config',
  line    => '    PasswordAuthentication no',
  replace => true,
}

file_line { 'Delare identity file':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => '     IdentityFile ~/.ssh/school',
  replace => true,
}
