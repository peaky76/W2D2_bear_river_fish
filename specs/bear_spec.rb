require('minitest/autorun')
require('minitest/reporters')

require_relative('../bear')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestBear < MiniTest::Test


end