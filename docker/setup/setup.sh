#!/bin/bash
# setup.sh
#

#
start=`date +%s`
now=$(date +"%Y-%m-%d %R")
echo "Running setup for webapp $now"

#
# Setup commands
cd /application

# Install composer libs
composer install

# Folder permission settings
chmod -R 755 writable/ 
chown -R www-data:www-data writable/

# Test Php Spark 
php spark

# Compile JS and CSS 
#?

#Setup DB
# migrate
# seed

# Refresh composer
#composer dump-autoload

# Clear cache
#php spark cache:clear --no-header


#
end=`date +%s`
runtime=$((end-start))
echo "Done ($runtime seconds)"
