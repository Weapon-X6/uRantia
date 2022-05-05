require_relative 'dice'

class DiceSet

    attr_reader :dice1, :dice2

    def initialize
        roll
    end

    def roll
        @dice1 = Dice.new
        @dice2 = Dice.new    
    end

    def display
        puts "#{@dice1.number}, #{@dice2.number}"
    end

end