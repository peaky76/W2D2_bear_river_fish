require('minitest/autorun')
require('minitest/reporters')

require_relative('../bear')
require_relative('../river')
require_relative('../fish')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestBear < MiniTest::Test

    def setup()
        @bear = Bear.new("Wojtek", "Brown Bear")
        @river = River.new("Volga")
        @fish1 = Fish.new("Sammy Salmon")
        @fish2 = Fish.new("Polly Perch")
        @fish3 = Fish.new("Tommy Tench")
        @fish = [@fish1, @fish2, @fish3]        
    end

    def test_has_name()
        assert_equal("Wojtek", @bear.name)
    end

    def test_has_type()
        assert_equal("Brown Bear", @bear.type)
    end

    def test_has_empty_stomach()
        assert_equal(0, @bear.fish_in_stomach_count())
    end

    def test_take_fish()
        @river.add_fish(@fish)
        @bear.take_fish(@river)
        assert_equal(2, @river.fish_stock_count())
        assert_equal(1, @bear.fish_in_stomach_count())
    end
    
end