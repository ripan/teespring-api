require "httparty"
module Teespring
  class Ink
  	include HTTParty
    attr_accessor :id, :color, :cost
    def initialize(id,color,cost)
      @id = id
      @color = color
      @cost = cost
    end
  end
end
