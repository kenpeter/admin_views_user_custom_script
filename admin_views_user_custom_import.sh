#!/bin/sh

# Change your path here.
SOURCE_DIR="/var/www/test/testme/admin_views_user_custom/source"

# Output
echo "\nln -s this script in your bin directory\n"

echo "\nPlease patch views to support views-import and views-export\n"

echo "\nYou should be sitting under a website directory\n"

echo "\nUsage: admin_views_user_custom_import.sh\n"

echo "\nImporting......................\n"


# It only takes full path 
drush views-import admin_views_user --source="$SOURCE_DIR"
drush cc all
