require "minitest/autorun"
require_relative "isbn.rb"


class TestISBN <Minitest::Test

    def test_1_returns_1
        assert_equal(1,1)
    end

    def test_return_numbers_x
        assert_equal("1234567890x", strip("1d2j34$5%6^7&8*9(0)x"))
    end

    # def test_isbn_length_10_true
    #     assert_equal(true, valid("0-321-14653-0"))
    # end

    # def test_isbn_length_13_true
    #     assert_equal(true, valid("978-0-13-149505-0"))
    # end

    def test_is_10_valid
        assert_equal(true, valid(0-321-14653-0))
    end
end