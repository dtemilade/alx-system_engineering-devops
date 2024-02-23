# Allow holberton user and open a file without any error message.

exec { 'holberton':
  command => 'sed -i "/holberton/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/'
}
