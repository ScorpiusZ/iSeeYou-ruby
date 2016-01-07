require 'iseeyou/classifier'
require 'iseeyou/configuration'
module ISeeYou
  extend self

  def config
    @config || Configuration.new
  end

  def configue
    yield config
  end

  def predict(feature)
    classifier.predict([feature])
  end

  def train(feature,target)
    classifier.train([feature],[target])
  end

  private 
  def classifier
    @classifier || Classifier.new('test','spam1',config)
  end

end
