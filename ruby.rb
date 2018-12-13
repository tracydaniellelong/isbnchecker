def check(char)
  isbn = char.tr("-, ", "")
  if isbn =~ /[!@~#$%^&*()a-wyz]/ || isbn.length != 10   
     return "not valid"
  else
    return isbn
  end
end
