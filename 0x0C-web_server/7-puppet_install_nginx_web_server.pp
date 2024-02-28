# Define the Nginx class
class { 'nginx':
  listen_port => 80,
}

# Create a custom Nginx configuration for the 301 redirect
nginx::resource::location { '/redirect_me':
  ensure       => present,
  location     => '/redirect_me',
  rewrite_rule => '^ /redirect_me$ hhttps://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
}
