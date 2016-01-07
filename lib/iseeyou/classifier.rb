require 'net/http'
require 'uri'
require 'json'
module ISeeYou
  class Classifier
    attr_reader :config

    def initialize(config)
      @config = config
    end

    def predict(features)
      result = post(config.predict_api,{ 'datas'=>features })
      result['results'].map do |data|
        data['prediction'] == 1
      end
    end

    def train(features,targets)
      post(config.train_api,{ 'datas'=>features, 'targets'=>targets })
    end

    private 
    def post(url,params)
      params.merge({'name'=>config.name,'namespace'=>config.namespace})
      res = Net::HTTP.post_form(URI.parse(url),params)
      result = res.is_a?(Net::HTTPSuccess) ? res.body : ''
      JSON.parse(result).merge('status_code'=>res.code)
    end

  end
  
end
