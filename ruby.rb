def check(str)
  isbn = str.tr("-, ", "")
  if isbn =~ /[x0-9]/ && isbn.length == 10
    counter = 0
    total = 0
    isbn.split("")[0..8].each do |value, index|
        if isbn.split("")[0..8].include?("x")
          return false
        else
          total += (value.to_i * (counter += 1))
          total % 11 == isbn[9]
        end
    end
      if isbn.split("")[9] == "x" && total % 11 == 10
        return true
      end
    isbn[9].to_i == total % 11
  elsif isbn =~ /[0-9]/ && isbn.length == 13
    counter = 0
    isbn.split("")[0..11].each_with_index { |value, index|
      index.even? ? counter += (value.to_i * 1) : counter += (value.to_i * 3)
    }
      isbn[12].to_i == (10 - (counter % 10)) % 10
  else
    return "not valid"
  end
end
