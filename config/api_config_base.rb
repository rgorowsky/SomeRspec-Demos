class ApiConfigBase
  class << self
    def env
      settings = load_json()
      settings.environment.downcase
    end

    # def send_metrics_to_data_dog
    #   settings = load_json()
    #   settings.sendMetricsToDataDog
    # end
    ###### Old - Not using this anymore ######


    def test_data_directory
      'TestData/'
    end

    def load_json
      json_string = File.read('./config/app_settings.json')
      JSON.parse(json_string, object_class: OpenStruct)
    end
    # the above function creates an env. checker , in conjunction with the Rakefile and script/create_app_settings.sh file
    
  end
end
