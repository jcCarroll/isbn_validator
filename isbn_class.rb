def valid_isbn?(isbn)
    # removes spaces and replaces with nothing
    isbn.gsub!(" ", "")
    # checks if length of isbn is 10 digits and returns true or false
    isbn.length == 10
end