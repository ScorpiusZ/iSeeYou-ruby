require 'net/http'
module ISeeYou
  class Classifier
    attr_reader :namespace,:name

    def initialize(namespace,name,config)
      @name_space = namespace
      @name = name
      @config = config
    end

    def predict(features)
      result = post(@config.predict_api,{ 'datas'=>features })
      p result
    end

    def train(features,targets)
      result = post(@config.train_api,{ 'datas'=>features, 'targets'=>targets })
      p result
    end

    private 
    def post(url,params)
      params.merge({'name'=>name,'namespace'=>namespace})
      p res
      return response.body if res.is_a?(Net::HTTPSuccess)
      ''
    end

  end
  
end
