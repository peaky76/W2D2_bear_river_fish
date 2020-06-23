require('minitest/autorun')
require('minitest/reporters')

require_relative('../river')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestRiver < MiniTest::Test


end
