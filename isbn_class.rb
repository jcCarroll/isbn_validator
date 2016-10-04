def valid_isbn?(isbn)
    isbn.gsub!(" ", "")
    isbn.length == 10
end