def check(num)
  isbn = num.tr("-, ", "")
  if isbn =~ /[!@~#$%^&*()a-wyz]/
     return "not valid"
  else
     return isbn
   end
end
