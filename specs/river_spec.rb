require('minitest/autorun')
require('minitest/reporters')

require_relative('../river')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestRiver < MiniTest::Test

    def setup()
        @river = River.new("Volga", ["Sammy Salmon", "Polly Perch", "Tommy Tench"])       
    end

    def test_has_name()
        assert_equal("Volga", @river.name)
    end

    def test_river_has_fish()
        assert_equal(3, @river.fish_stock_count())
    end

    def test_add_fish()
        @river.add_fish("Colin Carp")
        assert_equal(4, @river.fish_stock_count())
    end

    def test_remove_fish()
        @river.remove_fish("Polly Perch")
        assert_equal(2, @river.fish_stock_count())
    end

end
