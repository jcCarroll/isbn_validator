require "minitest/autorun"
require_relative "isbn_class.rb"

class TestISBN < Minitest::Test

    def test_valid_ten_digit_isbn_returns_true
        assert_equal(true, valid_isbn?("0471958697"))
    end

    def test_empty_string_returns_false
        assert_equal(false, valid_isbn?(""))
    end

    def test_valid_isbn_with_spaces_returns_true
        assert_equal(true, valid_isbn?("0 471 95869 7"))
    end

    def test_valid_isbn_with_dashes_returns_true
        assert_equal(true, valid_isbn?("0-471-95869-7"))
    end

    def test_valid_isbn_with_dashes_and_spaces_returns_true
        assert_equal(true, valid_isbn?("0-471-958 69 7"))
    end

    def test_invalid_isbn_10_returns_false
        assert_equal(false, valid_isbn?("0471958699"))
    end

end