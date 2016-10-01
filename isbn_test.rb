require "minitest/autorun"
require_relative "isbn.rb"


class TestISBN <Minitest::Test

    def test_1_returns_1
        assert_equal(1,1)
    end

    def test_return_numbers_x
        assert_equal("1234567890x", strip("1d2j34$5%6^7&8*9(0)x"))
    end
end