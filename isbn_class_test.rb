require "minitest/autorun"
require_relative "isbn_class.rb"

class TestISBN < Minitest::Test

    def test_valid_ten_digit_isbn_returns_true
        assert_equal(true, valid_isbn?("0471958687"))
    end

    def test_empty_string_returns_false
        assert_equal(false, valid_isbn?(""))
    end

end