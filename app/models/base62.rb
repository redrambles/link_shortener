class Base62
  CHARS = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".freeze
  BASE = CHARS.length
  # Returns a string ex: Base62.encode(1064) = "gw"
  def self.encode(number)
    return "0" if number == 0 || number == nil 
    result = ""

    while number > 0 do
      result.prepend(CHARS[number % BASE])
      number = number / BASE
      # require "pry"
      # binding.pry
    end
    result
  end

  # Returns a number ex: Base62.decode("gw") = 1062
  def self.decode(string)
    number = 0

    string.reverse.each_char.with_index do | char, index |
      power = BASE**index 
      index = CHARS.index(char)
      number += index * power
    end
    
    number
  end
end

# Call the encode method
# encoded_string = Base62.encode(1024)

