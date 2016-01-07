module ISeeYou
  class Configuration
    attr_accessor :base_url
    attr_reader :predict_api, :train_api

    DEFAULT = 'http://192.168.99.100:3000/'

    def predict_api
      (base_url || DEFAULT) + '/spam/predict'
    end

    def train_api
      (base_url || DEFAULT) + '/spam/train'
    end
  end
end
