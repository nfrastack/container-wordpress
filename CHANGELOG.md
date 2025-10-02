## 5.8.99 2025-10-02 <dave at tiredofit dot ca>

Add EOL Notice and deprecate image


## 5.8.2 2024-04-16 <dave at tiredofit dot ca>

   ### Changed
      - Remove PHP_ENABLE_ZLIB to quiet down some warnings
      - Rebuild to fix some upstream issues with imagemagick


## 5.8.1 2024-03-25 <dave at tiredofit dot ca>

   ### Added
      - Decalre a series of PHP extensions enabled (exif,gd,imagick,redis,shmop,simplexml,xml,xmlreader,zip,zlib)


## 5.8.0 2024-01-25 <dave at tiredofit dot ca>

   ### Added
      - Change sed statements to use wp-cli


## 5.7.5 2023-08-15 <fermion2020@github>

   ### Changed
      - Fix issue with different default values of ENABLE_HTTPS_REVERSE_PROXY environment variable


## 5.7.4 2023-07-20 <dave at tiredofit dot ca>

   ### Changed
      - Quiet down some output on screen when performing update setup except if LOG_LEVEL=DEBUG


## 5.7.3 2023-06-29 <dave at tiredofit dot ca>

   ### Changed
      - Resolve multi lined sed expression joining


## 5.7.2 2023-06-28 <dave at tiredofit dot ca>

   ### Changed
      - Revert nginx configuration to <5.5.0 versioning letting upstream nginx image handle caching and logging optimizations


## 5.7.1 2023-06-13 <dave at tiredofit dot ca>

   ### Added
      - Add xmlstarlet package


## 5.7.0 2023-05-29 <dave at tiredofit dot ca>

   ### Added
      - Add UPDATE_MODE environment variable (default minor) to control Wordpress manor, minor automatic updating


## 5.6.0 2023-04-26 <dave at tiredofit dot ca>

   ### Added
      - Introduce support for '_FILE' environment variables


## 5.5.0 2023-04-12 <dave at tiredofit dot ca>

   ### Added
      - Rotate DB_HOST, DB_PORT, DB_USER, DB_PASS, DB_NAME in wp-config.php on each startup
      - Introduce ROTATE_KEYS variable to rotate salts and keys on each startup
      - Correctly allow custom DB_PORTs to function
      - Quiet down nginx log for some file types


## 5.4.6 2023-04-05 <dave at tiredofit dot ca>

   ### Changed
      - Alter Dockerfile to solve some build issues


## 5.4.5 2023-02-06 <radarsymphony@github>

   ### Changed
      - Add safety net when executing wp-cli search and replace to scope specifically to NGINX_WEBROOT


## 5.4.4 2023-02-06 <radarsymphony@github>

   ### Changed
      - Fix for ENABLE_HTTPS_REVERSE_PROXY variable


## 5.4.3 2023-02-06 <radarsymphony@github>

   ### Changed
      - Fix SITE_URL_UPDATE_MODE parameters


## 5.4.2 2022-12-14 <dave at tiredofit dot ca>

   ### Added
      - Introduce PHP 8.2 support


## 5.4.1 2022-12-01 <dave at tiredofit dot ca>

   ### Changed
      - Rework Dockerfile


## 5.4.0 2022-11-29 <dave at tiredofit dot ca>

   ### Changed
      - Move routines to seperate functions
      - Optimize downloading wp-cli
      - Rework Dockerfile for quicker and better CI capabilities


## 5.3.8 2022-10-05 <dave at tiredofit dot ca>

   ### Changed
      - Add some quotes around variables
      - Fix tab spacing
      - Update legacy nginx configuration


## 5.3.7 2022-06-23 <dave at tiredofit dot ca>

   ### Added
      - Support tiredofit/nginx:6.0.0 and tiredofit/nginx-php-fpm:7.0.0 changes


## 5.3.6 2022-05-24 <dave at tiredofit dot ca>

   ### Added
      - Introduce PHP 8.1 builds


## 5.3.5 2022-02-10 <dave at tiredofit dot ca>

   ### Changed
      - Update to support upstream image changes


## 5.3.4 2022-01-20 <dave at tiredofit dot ca>

   ### Changed
      - Fix for SITE_URL changing not functioning correctly


## 5.3.3 2021-12-07 <dave at tiredofit dot ca>

   ### Changed
      - Rework Zabbix Template auto register


## 5.3.2 2021-10-22 <dave at tiredofit dot ca>

   ### Changed
      - Fix for 5.3.1


## 5.3.1 2021-10-19 <dave at tiredofit dot ca>

   ### Changed
      - Change to wp-cli alias to restore previous directory location after execution
      - Minor shellcheck cleanup


## 5.3.0 2020-06-09 <dave at tiredofit dot ca>

   ### Added
      - Update to support tiredofit/alpine 5.0.0 base image


## 5.2.2 2020-04-21 <dave at tiredofit dot ca>

   ### Added
      - Update to support changes in tiredofit/alpine base image


## 5.2.1 2020-01-20 <dave at tiredofit dot ca>

   ### Changed
      - Fix in 30-wordpress container initialization routines


## 5.2.0 2020-01-03 <dave at tiredofit dot ca>

   ### Added
      - Add SITE_URL_UPDATE_MODE environment variable


## 5.1.1 2019-12-31 <dave at tiredofit dot ca>

   ### Changed
      - Updated warnings to notices

## 5.1.0 2019-12-29 <dave at tiredofit dot ca>

   ### Changed
      - Change to support new tiredofit/alpine base image and new features in tireodofit/nginx

## 5.0.5 2019-12-18 <dave at tiredofit dot ca>

   ### Changed
      - Change to support dynamic webserver user/group


## 5.0.4 2019-12-11 <dave at tiredofit dot ca>

   ### Added
      - Add alias for running wp-cli as webserver user (type `wp-cli <argument>`)


## 5.0.3 2019-12-05 <dave at tiredofit dot ca>

   ### Changed
      - Fix extra bracket in nginx.conf/default.conf


## 5.0.2 2019-12-05 <dave at tiredofit dot ca>

   ### Added
      - Add python2 package to satisfy Zabbix monitoring dependency


## 5.0.1 2019-12-04 <dave at tiredofit dot ca>

   ### Added
      - Updated image to support new tiredofit/nginx and tiredofit/nginx-php-fpm base images
      - Customizable Webroot for Installing


## 5.0.0 2019-11-19 <dave at tiredofit dot ca>

   ### Added
      - Add automatic install capabilities - Set environment variables properly and have working install with no input
      - Add automatic altering of hostname/website URL delivery
      - Added new variables: ADMIN_EMAIL,ADMIN_PASS,ADMIN_USER,DB_CHARSET,DB_PREFIX,DB_PORT,SITE_LOCALE,SITE_PORT,SITE_TITLE in order to perform an installation.


## 4.4.2 2019-11-18 <dave at tiredofit dot ca>

   ### Reverted
      - Removed Python Dependencies
      - Removed PDFtk Dependencies


## 4.4.1 2019-11-18 <dave at tiredofit dot ca>

   ### Added
      - Enable switching reverse proxy on and off with Nginx `ENABLE_HTTPS_REVERSE_PROXY`
      - Alpine 3.10 Base
      - Nginx 1.16
      - PHP 7.3

   ### Changed
      - Major cleanup to code and modernize
      - Moved init script to follow proper s6-overlay installations (/etc/cont-init.d)
      - Cleaned up docker-compose.yml
      - Added some verbosity to the README


## 4.4 2018-02-01  <dave at tiredofit dot ca>

* Rebase

## 4.3 2018-01-29  <dave at tiredofit dot ca>

* Add Zabbix Checks for Wordpress

## 4.2 2017-07-06  <dave at tiredofit dot ca>

* Added PHP_TIMEOUT

## 4.1 2017-06-23 <dave at tiredofit dot ca>

* Rebase to allow msmtp and sanity checks on init

## 4.0 2017-06-23 <dave at tiredofit dot ca>

* Rebase from nginx-php-fpm
* Cleaned up drastically complexity


## 3.6 2017-06-13 <dave at tiredofit dot ca>

* Added Git to Support VersionPress

## 3.5 2017-06-07 <dave at tiredofit dot ca>

* Rebase to Alpine 3.6

## 3.4 2017-04-07 <dave at tiredofit dot ca>

* Rebase Source Tree 

## 3.3 2017-03-29 <dave at tiredofit dot ca>

* Added pdftk

## 3.0.2 2017-02-09 <dave at tiredofit dot ca>

* Bugfixes with Zabbix
* Switched Base to local alpine:edge
* Removed Sed optimizations to support persistent configuration of nginx.conf

## 3.0.1 2017-02-07 <dave at tiredofit dot ca>

* Added PHP OPCache Checks for Zabbix and Fixed some Variables

## 3.0 2017-02-07 <dave at tiredofit dot ca>

* Added Zabbix Agent
* Zabbix Agent configured to check php-fpm and nginx


## 2.1 2017-01-28 <dave at tiredofit dot ca>

* Added Nginx Rewrite Rules to support SimpleSAMLPHP 
* Added php7-ldap, openssl
* Removed Built in Redis Configuration - use external source from now on.


## 2.0 2017-01-16 <dave at tiredofit dot ca>

* Major Cleanup - Removing Environment and Security Variables which required Root
* Automatically download Wordpress if not found in Persistent Storage
* Cleaned up Code and Documented Stages and Processes for Learning

## 1.0 2017-01-02 <dave at tiredofit dot ca>

* Initial Release
* Alpine:edge
* PHP7
* wp-cli
* Must copy Wordpress Installation files to folder upon bootup
