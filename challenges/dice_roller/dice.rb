class Dice

    attr_reader :number

    def initialize()
        @number = rand(6) + 1
    end
    
end