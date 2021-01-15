module Dice
  class DiceFactory
    def initialize(sides)
      @sides = sides
    end

    def build
      dice_class = case @sides
                  when 4
                    FourSidedDice
                  when 6
                    SixSidedDice
                  when 8
                    EightSidedDice
                  else
                    raise StandardError, "Dice with the sides #{@sides} is not supported."
                  end

      built = dice_class.new
      return built
    end
  end
end

