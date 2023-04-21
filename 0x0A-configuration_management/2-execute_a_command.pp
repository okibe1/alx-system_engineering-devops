# Kill process with name "killmenow"
exec { 'killmenow':
  command => '/usr/bin/pkill killmenow',
  path    => '/usr/bin',
  logoutput => true,
  unless => '/usr/bin/pgrep killmenow | grep $$',
}
