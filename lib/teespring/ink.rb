module Teespring
  class Ink
    attr_accessor :id, :color, :cost
    def initialize(id,color,cost)
      @id = id
      @color = color
      @cost = cost
    end
  end
end
