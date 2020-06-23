require('minitest/autorun')
require('minitest/reporters')

require_relative('../fish')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestFish < MiniTest::Test


end