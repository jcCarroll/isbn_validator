require "minitest/autorun"
require_relative "isbn.rb"


class TestISBN <Minitest::Test

    def test_1_returns_1
        assert_equal(1,1)
    end

    def test_isbn10_valid
        assert_equal("valid", valid("0-321-14653-0"))
    end

    def test_isbn13_valid
        assert_equal("valid", valid("978-0-13-149505-0"))
    end
end