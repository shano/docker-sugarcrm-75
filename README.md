docker-sugarcrm75
===================

Dockerfile for Apache &amp; PHP 5.4 for SugarCRM.


### Instructions

Here's the steps to get yourself up and running.

### MySQL

You'll need your own version of MySQL for this. As I use Debian testing as a host I just installed MySQL on it and have my SugarCRM boxes point to the host using the dockerhost entry in /etc/hosts.

There is nothing at all stopping you from creating another Docker instance running mysql but I figured this was an unnecessary step and getting data persistence working with Docker can be a little annoying.

### Fill in Docker settings

Edit run.sh and change the containers ip to whatever your hosts ip is. Don't forget to set the folder to your SugarCRM code folder.

Edit files/vhost.conf if you wish to use a custom url to access Sugar or if you have multiple instances of SugarCRM installed.

Edit files/php.ini and change any settings you might want to customise with PHP here.

### Tell SugarCRM to use the right MySQL database

In config.php I just set the mysql host to dockerhost

### Debugging

Because I've used stdout for logs you can see apache errors by running a command like this.

    sudo docker logs -f sugarcrm75

