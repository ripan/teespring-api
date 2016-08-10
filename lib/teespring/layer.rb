require "httparty"
module Teespring
  class Layer
  	include HTTParty
    attr_accessor :color, :volume
    def initialize(color, volume)
      @color = color
      @volume = volume
    end
  end
end
