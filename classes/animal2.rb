class Animal

    attr_accessor :noise, :color

    def initialize(options={})
        @noise = options[:noise] || 'Headless'
        @color = options[:color] || 'white'
    end    

    def self.types
        ['pig', 'cow', 'conejo']
    end

    def self.create_a_pig
        Animal.new({noise: 'Oink!', color: 'tempest'})
    end

end
    