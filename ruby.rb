def check(num)
  isbn = num.tr("-, ", "")
  if isbn !~ /\D/
    return isbn
  else
    return "not valid"
  end
end
