def valid_isbn?(isbn)
    isbn = remove_spaces(isbn) # passes to remove_spaces function
    isbn = remove_dashes(isbn) # passes to remove_dashes function
    isbn.length == 10 # checks if length of isbn is 10 digits and returns true or false
    isbn.chars.map!(&:to_i) # splits the string into an array of individual characters as intigers
end

def remove_spaces(isbn)
    isbn = isbn.delete(" ") # delete spaces
    isbn = isbn.delete("-") # delete dashes
end

def remove_dashes(isbn)
    isbn = isbn.delete("-") # delete dashes
end