module MathGame
  class Player

    attr_reader :name
    attr_accessor :points

    # Initialize each player to have 3 points
    def initialize(name)
      @points = 3
      @name = name
    end
  end
end
