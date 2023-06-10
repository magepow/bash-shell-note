#!/bin/bash
# @Author: nguyen
# @Date:   2022-07-07 14:54:44
# @Last Modified by:   nguyen
# @Last Modified time: 2022-07-07 16:48:23

# find /opt/alt/ -type f -name '*.ini' -exec sed -i 's,^upload_max_filesize =.*$,upload_max_filesize = 20M,' {} + 

sed -i 's,^max_execution_time =.*$,max_execution_time = 3000,' /opt/alt/php*/usr/php/php.ini
sed -i 's,^default_socket_timeout =.*$,default_socket_timeout = 3000,' /opt/alt/php*/usr/php/php.ini
sed -i 's,^max_input_time =.*$,max_input_time = 3000,' /opt/alt/php*/usr/php/php.ini
sed -i 's,^max_input_vars =.*$,max_input_vars = 10000,' /opt/alt/php*/usr/php/php.ini
sed -i 's,^memory_limit =.*$,memory_limit = 4G,' /opt/alt/php*/usr/php/php.ini
sed -i 's,^post_max_size =.*$,post_max_size = 80M,' /opt/alt/php*/usr/php/php.ini
sed -i 's,^upload_max_filesize =.*$,upload_max_filesize = 20M,' /opt/alt/php*/usr/php/php.ini