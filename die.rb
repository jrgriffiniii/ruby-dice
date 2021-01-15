module Dice
  class Die # Or DiceSet, DiceCollection, or DiceArray...
    def initialize(members)
      @members = members
    end

    def roll
      result = 0

      @members.each do |member_dice|
        if result == 0
          result = member_dice.roll
        else
          result = result * member_dice.roll
        end
      end

      return result
    end
  end
end
