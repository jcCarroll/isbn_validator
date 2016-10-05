def valid_isbn?(isbn)
    isbn = remove_spaces(isbn) # passes to remove_spaces function
    isbn = remove_dashes(isbn) # passes to remove_dashes function
    if valid_isbn_ten_length?(isbn) && valid_isbn_ten_check_sum?(isbn) # checks if length of isbn is 10 digits and returns true or false
        true
    elsif
        valid_isbn_thirteen_length?(isbn)
        true
    else
        false
    end
end

def valid_isbn_ten_length?(isbn)
    isbn.length == 10 # checks to see if isbn length is equal to 10
end

                    def valid_isbn_thirteen_length?(isbn)
                        isbn.length == 13 # checks to see if isbn length is equal to 13
                    end

def valid_isbn_ten_check_sum?(isbn)
    sum = 0
    ten_digit_array = isbn.chars.map!(&:to_i) # splits the string into an array of individual characters as intigers
    ten_digit_array.each_with_index do |value, index| # iterates through the array setting the value and index position to a variable
        break if index == 9 # stops the do loop at position 9 of the arrya
        sum += (index + 1) * value # sets sum to the index position + 1 * the current value
    end
    check_sum = sum % 11 # sets the value of check_sum to 
    if check_sum == 10 # it looking to see if the check_sum is equal to 10
        check_sum = "X" # if check_sum is equal to 10, set the value of check_sum to "X"
    end
    check_sum_string = check_sum.to_s # turns the check_sum into a string while seting it equal to check_sum_string
    if check_sum_string == isbn[-1].upcase # looks to see if check_sum_string is equal to isbn position -1 which has been changed to uppercase and returns true or false
        true
    else
        false
    end
end

def remove_spaces(isbn)
    isbn = isbn.delete(" ") # delete spaces
end

def remove_dashes(isbn)
    isbn = isbn.delete("-") # delete dashes
end