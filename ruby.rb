def check(num)
  isbn = num.tr("-, ", "")
  isbn !~ /\D/ 

end
