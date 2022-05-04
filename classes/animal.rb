class Animal
    def noise
        @noise
    end

    # using a static string
    def noise
        p 'test'
        @noise = 'Oink!'
    end

    def make_test
        @test
    end

    def set_test
        @test = 'this is a test!'
    end
end