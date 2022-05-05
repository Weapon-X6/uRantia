class Radio

    attr_reader :volume, :freq, :band

    # FM 88.0 - 108.0
    # AM 540.0 - 1600.0
    def initialize(ohms={})        
            @freq = ohms[:freq] || 66
    end

    def self.am
        Radio.new({freq: 540.0})
        @@band = 'AM'
    end

    def self.fm
        @@band = 'FM'
        Radio.new({freq: 88.0})
    end

    def freq=(value)
        return if value < 88.0 || value > 108.0
        @freq = value
    end

    def status
        "Station #{@freq} #{@band} - volume #{@band}"
    end
    
    def volume=(value)
        return if value < 1 || value > 10
        @volume = value
    end

    def crank_it_up
        @volume = 11
    end

end