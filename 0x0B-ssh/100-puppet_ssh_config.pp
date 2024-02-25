# Creating SSH configuration file
file { '/home/user/.ssh/config':
  ensure  => present,
  content => "
    Host 34.227.93.37
      IdentityFile ~/.ssh/school
      PasswordAuthentication yes
  ",
}

# Ensuring proper permissions
file { '/home/user/.ssh':
  ensure  => directory,
  mode    => '0700',
}

file { '/home/user/.ssh/school':
  ensure  => present,
  mode    => '0600',
}
