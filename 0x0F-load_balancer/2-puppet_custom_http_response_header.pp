# a custom HTTP header response with Puppet.

exec {'header':
	provider    => shell,
	command     => 'sudo apt-get -y update ; sudo apt-get -y install nginx ; header_str="location \/ {\n\t\tadd_header X-Served-By \$hostname;" ; sudo sed -i "s/location \/ {/$header_str/" /etc/nginx/sites-available/default ; sudo service nginx restart',
}
