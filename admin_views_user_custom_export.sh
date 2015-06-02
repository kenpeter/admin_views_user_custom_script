#!/bin/sh

# Change your path here.
SOURCE_DIR="/var/www/test/testme/admin_views_user_custom/source"

# Output
echo "\nPlease patch views to support views-import and views-export\n"

echo "\nYou should be sitting under a website directory\n"

echo "\nUsage: admin_views_user_custom_export.sh\n"

echo "\nExporting......................\n"


# http://stackoverflow.com/questions/793858/how-to-mkdir-only-if-a-dir-does-not-already-exist
mkdir -p $SOURCE_DIR

# It only takes full path 
drush views-export admin_views_user --destination="$SOURCE_DIR"
drush cc all