#!/bin/sh

# Sample nabbed from apachectl and init.d/apache2
APACHE_CONFDIR=/etc/apache2
APACHE_ENVVARS=$APACHE_CONFDIR/envvars

# Load the environmentals
. $APACHE_ENVVARS

exec /usr/sbin/apache2 -d /etc/apache2 -k start -DFOREGROUND
