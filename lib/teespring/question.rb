require "httparty"
module Teespring
  class Question
  	include HTTParty
    attr_accessor :layers
    def initialize(layers)
      @layers = layers
    end
  end
end
