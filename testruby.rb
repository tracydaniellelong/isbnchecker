require 'minitest/autorun'
require_relative 'ruby.rb'

class Testing < Minitest::Test
	def test_for_1_equals_1
		assert_equal(1, 1)
	end
  def test_for_removing_dash
		assert_equal("12353234", check("123-53-234"))
	end
  def test_for_removing_space
		assert_equal("12353234", check("123 53 234"))
	end
end
