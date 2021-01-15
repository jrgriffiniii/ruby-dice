module Dice
  class BaseDice # This might be better named NilDice
    def self.sides
      0
    end

    def roll
      # I suspect that this is resembles a uniform distribution (which would be independent and identically distributed between "rolls". One exercise might be to abstract the strategy to use other distributions (e. g. gaussian))
      rand(0..self.class.sides)
    end
  end
end