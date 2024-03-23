# Create SSH configuration file

file { '/home/kinyuy/.ssh/config':
  ensure  => present,
  content => "
    Host 54.175.223.126
        IdentityFile ~/.ssh/school
        PasswordAuthentication no
  ",
}

# Ensure proper permissions
file { '/home/kinyuy/.ssh':
  ensure  => directory,
  mode    => '0700',
}

file { '/home/kinyuy/.ssh/school':
  ensure  => present,
  mode    => '0600',
}

# Add public key to authorized_keys (you can use ssh_authorized_key resource)
# Example:
ssh_authorized_key { 'ubuntu@54.175.223.126':
  ensure => present,
  user   => 'ubuntu',
  key    => 'ssh-rsaAAAAB3NzaC1yc2EAAAADAQABAAACAQC1Jrg69rHE3K2lrE2u1QS5CshDcpIr9CMKYaYs0PnerMxsodksesufeZ2zYEYqdshMv7KWgZ5CO9jXHUoyygRoox3dMw3qVIdZVmsoBaN9t18rWap4FeWohTv0QuyJn1oZO1FTEwI/ir1cM/XvOWT4VQ5EkXB51wY7hJEbcc9ohqv6P9/uvdGX6l24D/OGHMcrDBrEfAzXkunqx4y8xn22ie7ewPBrlojTaGImeNZtU3Pl/s1OguSa2LDgqh5EMwvaa3y5MrFJhvX4eORC7PLnbqIMjnvOfO2DNAgDmaXeYZx0N8rpiFWKdTpX6TQKpT9dC8pTm4BBTtg9dZZKREUROH+coT3LYKOS7PBNRvmLGAAJ13zxOR5wCRFzyb/QMzthHaqPfkUA0BOrbWLccrziEBzYB7Urr2PPEf4uysBEsqcp1FHh1fjQ+L3mfp9zQIQhMkBiu4qqFIPHFYP4b5+eyqYHvD77WKcCckEZDnOQCO+/INVUom56qUScDKyM7Nr55zOAgbPRnEZzc1ovPTCBACvamHDXnYjFw4Xlt3s3V+DLlXT3OEsh8XuFRz8i6mCCXtOy4RAqsB+4F2J/U9hWXFPyD9NE/Hk6d545yu7Q2n0F9nsaazohBWHg8IeweYztin3NZCaEMT3x30QQk47sZdem3lFmF2A9ET8KlxOVXQ==kinyuy@Telmah-PC',
}
