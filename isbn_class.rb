def valid_isbn?(isbn)
    isbn.gsub!(" ", "") # removes spaces and replaces with nothing
    isbn.gsub!("-", "") # removes dashes and replaces with nothing
    isbn.length == 10 # checks if length of isbn is 10 digits and returns true or false
end