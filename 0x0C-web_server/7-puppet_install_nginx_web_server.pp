# Define the Nginx class
# /etc/puppet/manifests/nginx_config.pp
class { 'nginx':
  package_source => 'nginx-plus',  # For NGINX Plus, adjust as needed
  package_name   => 'nginx-plus',  # For NGINX Plus, adjust as needed
}


# Create a custom Nginx configuration for the 301 redirect
nginx::resource::server { 'default':
  listen_port => 80,
  server_name => '_',
  location    => '/',
  location_custom_cfg => {
    'return' => '301 https://www.youtube.com/watch?v=QH2-TGUlwu4',
  },
}
