class phpredis {
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => [
      'php-pecl-redis',
      'php-pecl-igbinary'
    ],
  }

  package { $required:
    ensure  => latest,
  }

}
