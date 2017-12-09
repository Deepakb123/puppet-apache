class apache::params {
case $facts['os']['family'] {
    'Debian':{
      $package_name = 'apache'
      $service_name = 'httpd'
    }
'RedHat' : {
      $package_name = 'apache'
      $service_name = 'http'
    }
default: {
fail("${facts['operatingsystem']} is not supported")
    }
  }
}

