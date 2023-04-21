# Define file resource
file {
  # Path to file to be created
  '/tmp/holberton':

  # File mode in octal notation
  mode    => '0744',

  # User that will own the file
  owner   => 'www-data',

  # Group that will own the file
  group   => 'www-data',

  # The content to be written to the file
  content => 'I love Puppet',
}
