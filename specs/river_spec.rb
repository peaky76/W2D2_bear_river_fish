require('minitest/autorun')
require('minitest/reporters')

require_relative('../river')
require_relative('../fish')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestRiver < MiniTest::Test

    def setup()
        @river = River.new("Volga")
        @fish1 = Fish.new("Sammy Salmon")
        @fish2 = Fish.new("Polly Perch")
        @fish3 = Fish.new("Tommy Tench")
        @fish = [@fish1, @fish2, @fish3]
    end

    def test_has_name()
        assert_equal("Volga", @river.name)
    end

    def test_river_is_empty()
        assert_equal([], @river.fish_stock)
    end

    def test_add_fish()
        @river.add_fish(@fish)
        assert_equal(3, @river.fish_stock_count())
    end

    def test_remove_fish()
        @river.add_fish(@fish)
        @river.remove_fish(@fish1)
        assert_equal(2, @river.fish_stock_count())
    end

end
