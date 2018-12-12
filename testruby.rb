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
  def test_for_symbols
		assert_equal("not valid", check("!@$%^&*"))
	end
  def test_for_letters
    assert_equal("not valid", check("ak-js jas-ss"))
  end
  def test_for_letters_and_numbers
    assert_equal("not valid", check("a9-js j2s-4s"))
  end
  def test_for_letters_numbers_and_symbols
    assert_equal("not valid", check("a9-@js% j*2s-4s"))
  end
  def test_for_numbers_and_x
    assert_equal("", check("98-87 2-4x"))
  end
end
