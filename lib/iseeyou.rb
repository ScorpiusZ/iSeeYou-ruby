require 'iseeyou/classifier'
require 'iseeyou/configuration'
module ISeeYou
  extend self
  attr_writer :config

  def config
    @config ||= Configuration.new
  end

  def configure
    yield config
  end

  def spam?(features)
    if features.is_a? Array
      classifier.predict(features)
    else
      classifier.predict([features])[0]
    end
  end

  def train(samples)
    if samples.is_a? Array
      if samples[0].is_a? Array
        features,targets = samples.transpose
        classifier.train(features,targets.map{|x| x ? 1:0})
      else
        classifier.train(samples[0],samples[1] ? 1:0 )
      end
    end
  end

  private 
  def classifier
    @classifier || Classifier.new(config)
  end

end
