def valid_isbn?(isbn)
    isbn.delete!(" ") # delete spaces
    isbn.delete!("-") # delete dashes
    isbn.length == 10 # checks if length of isbn is 10 digits and returns true or false
end