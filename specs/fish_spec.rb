require('minitest/autorun')
require('minitest/reporters')

require_relative('../fish')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestFish < MiniTest::Test

    def setup()
        @fish1 = Fish.new("Sammy Salmon")
        @fish2 = Fish.new("Polly Perch")
        @fish3 = Fish.new("Tommy Tench")
    end

    def test_has_name()
        assert_equal("Sammy Salmon", @fish1.name)
    end

end