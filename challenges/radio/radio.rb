class Radio

    attr_reader :volume, :freq, :band
   
    @@fm_frequencies = 88.0..108.0
    @@am_frequencies = 540.0..1600.0
    @@default_am_freq = 540.0
    @@default_fm_freq = 88.0
    # FM 88.0 - 108.0
    # AM 540.0 - 1600.0
   
    def self.am
        Radio.new({band: 'AM'})
    end

    def self.fm
        Radio.new({band: 'FM'})
    end

    def initialize(ohms={})        
        self.volume = ohms[:value] || 6
        @band = ohms[:band] || 'FM'
        @freq = default_freq
    end
    
    def volume=(value)
        return if value < 1 || value > 10
        @volume = value
    end

    def freq=(value)
        value = value.to_f
        value = default_freq unless allowed_frequencies.include?(value)
        @freq = value
    end

    def crank_it_up
        @volume = 11
    end

    def status
        "Station #{@freq} #{@band} - volume #{@band}"
    end

    private

        def default_freq
            @band == 'AM' ? @@default_am_freq : @@default_fm_freq
        end

        def allowed_frequencies
            @band == 'AM' ? @@am_frequencies : @@fm_frequencies
        end
end