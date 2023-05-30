#!/bin/bash
# @Author: nguyen
# @Date:   2022-07-07 14:54:44
# @Last Modified by:   Alex Dong
# @Last Modified time: 2022-08-09 18:44:50
magecmd=$(
    cat <<EOF
composer create-project --repository=https://repo.magento.com/ magento/project-community-edition .
#find . -type d -exec chmod 700 {} \; && find . -type f -exec chmod 600 {} \;
chmod u+x bin/magento
EOF
)   
magebase64=`echo -n $magecmd | base64`
echo $magebase64

echo $magebase64 | base64 -d