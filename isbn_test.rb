require "minitest/autorun"
require_relative "isbn.rb"


class TestISBN <Minitest::Test

    # def test_1_returns_1
    #     assert_equal(1,1)
    # end

    # def test_number_returns_only_numbers
    #     assert_equal("12345", valid("1!2@3#4$5%"))
    # end

    # def test_number_returns_only_numbers_and_x
    #     assert_equal("032114653x", valid("0-321-14653-x"))
    # end

    # def test_number_returns_without_check_digit
    #     assert_equal("032114653", valid("0-321-14653-0"))
    # end

    def test_9_isbn_returns_valid
        assert_equal("valid", valid("0-321-14653-0"))
    end
end