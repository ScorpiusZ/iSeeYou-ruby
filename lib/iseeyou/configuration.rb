module ISeeYou
  class Configuration
    attr_writer :base_url,:namespace,:name
    attr_reader :predict_api, :train_api

    def base_url
      @base_url ||= 'http://192.168.99.100:3000'
    end

    def namespace
      @namespace ||= 'test'
    end

    def name 
      @name ||= 'spam'
    end

    def predict_api
      base_url + '/spam/predict'
    end

    def train_api
      base_url + '/spam/train'
    end
  end
end
