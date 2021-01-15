require 'thor'
require_relative './dice'

class DiceCLI < Thor
  desc "roll SIDES", "roll an N-sided dice"
  def roll(sides)
    factory = Dice::DiceFactory.new(sides.to_i)
    dice = factory.build
    puts "Rolled #{dice.roll} with a #{sides}-sided dice."
  end
end

DiceCLI.start(ARGV)