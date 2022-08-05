require 'rake/clean'
CLEAN.include('tmp')

task :setup do
  sh './script/create_app_settings.sh'
end

# this creates an app_settings.sh file, which will determine the env. run against if you have dif env.
# see SomeRspec-Demos/config/api_config_base.rb and SomeRspec-Demos/script/create_app_settings.sh for more
