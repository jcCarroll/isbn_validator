require "minitest/autorun"
require_relative "isbn.rb"


class TestISBN <Minitest::Test

    def test_1_returns_1
        assert_equal(1,1)
    end

    def test_number_returns_only_numbers
        assert_equal("12345", valid("1!2@3#4$5%"))
    end

    def test_number_returns_only_numbers_and_x
        assert_equal("877195869x", valid("877195869x"))
    end
end