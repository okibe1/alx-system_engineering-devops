# Create a file
file { '/tmp/school':
  ensure => 'file',
  mode => '0744',
  owner => 'www-data',
  group => 'www-data',
} ->

file { '/tmp/school':
  content => 'I love Puppet',
}
