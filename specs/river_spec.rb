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

end
