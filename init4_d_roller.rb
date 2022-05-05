#!/usr/bin/env ruby

require_relative 'challenges/dice_roller/dice_set'

puts "-" * 33
puts "Willkommen zur Dice R011er"
puts "-" * 33

dice_set = DiceSet.new
puts dice_set.display

response = nil
until response == 'q'
    puts "\nType 'r' to roll again, 'q' to quit"
    print '> '
    response = gets.chomp

    if response == 'r'
        dice_set.roll
        puts "\n" + dice_set.display
    end
end


