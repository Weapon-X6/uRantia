require_relative 'dice'

class DiceSet

    # optional    
    attr_reader :dice_array

    def initialize
        @dice_array = [Dice.new, Dice.new]
    end

    def roll
        @dice_array.each {|dice| dice.roll}
    end

    def display
        @dice_array.map {|dice| "#{dice.number}"}.join(' - ')
    end

end