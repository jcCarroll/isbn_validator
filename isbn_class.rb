def valid_isbn?(isbn)
    remove_unwanted(isbn) # passes to remove_unwanted function   
    isbn.length == 10 # checks if length of isbn is 10 digits and returns true or false
end

def remove_unwanted(isbn)
    isbn.delete!(" ") # delete spaces
    isbn.delete!("-") # delete dashes
end