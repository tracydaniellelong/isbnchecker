def check(char)
  isbn = char.tr("-, ", "")
  if isbn =~ /[x0-9]/ && isbn.length == 10
    return isbn
  elsif isbn =~ /[0-9]/ && isbn.length == 13
    return isbn
  else
    return "not valid"
  end
end
