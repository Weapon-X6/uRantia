class Dice

    attr_reader :number

    def initialize()
       roll
    end

    def roll
        @number = get_a_random_number
    end
    
private

    def get_a_random_number
        rand(6) + 1
    end

end