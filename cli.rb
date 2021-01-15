#! /usr/bin/env/ruby

require_relative './dice.rb'
# Dir.glob('./**/*.rb').each do |file_path|
#  require_relative(file_path)
#end

# Command line interface
puts "Please enter the number of dice sides: "
sides_input = gets.chomp
factory = Dice::DiceFactory.new(sides_input.to_i)
dice = factory.build
puts "Rolled #{dice.roll} with a #{sides_input}-sided dice."