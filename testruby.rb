require 'minitest/autorun'
require_relative 'ruby.rb'

class Testing < Minitest::Test
	def test_for_1_equals_1
		assert_equal(1, 1)
	end
  def test_for_removing_dash
		assert_equal(true, check("123-5763-234"))
	end
  def test_for_removing_space
		assert_equal("not valid", check("123 53 234"))
	end
  def test_for_symbols
		assert_equal("not valid", check("!@$%^&*"))
	end
  def test_for_letters
    assert_equal("not valid", check("ak-js jxs-ss"))
  end
  def test_for_letters_and_numbers
    assert_equal("not valid", check("a9-js j2s-4s"))
  end
  def test_for_letters_numbers_and_symbols
    assert_equal("not valid", check("a9-@js% j*2s-4s"))
  end
  def test_for_numbers_and_x
    assert_equal("not valid", check("98-87 2-4x"))
  end
  def test_for_x_not_at_end
    assert_equal(false, check("877195x869"))
  end
  def test_for_13_digits
    assert_equal(true, check("9780470059029"))
  end
  def test_for_valid_isbn_10
    assert_equal(true, check("877195869x"))
  end
	def test_for_valid_isbn_10_no_x
    assert_equal(true, check("0471958697"))
  end
	def test_for_isbn_13_0
    assert_equal(true, check("0000000000000"))
  end
	def test_for_isbn_10_0
    assert_equal(true, check("0000000000"))
  end
end
