#!/bin/bash

echo "Creating the app_settings.json file."
echo -e "{ \n\t\"environment\" : \"staging\",\n\t\"sendMetricsToDataDog\" : true\n}" > ./config/app_settings.json
# deals with setting up and running against env.  -  see Rakefile and config/api_config_base.rb files for more
