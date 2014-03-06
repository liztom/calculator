def multiple_strings(strings)
  strings = strings.split("?")
  total = []
    strings.each do |string|
      total << calculator(string)
    end
  total.each do |value|
    p "Your total is " + value.to_s
  end
end

def calculator(string)
  operators = {"plus" => :+, "divided" => :/, "times" => :*, "minus" => :-, "power" => :**}
  user_input = string.split(" ") 
  operator_words = [] 
  numbers = []
  temp_total = 0
  total = 0

  user_input.each do |word|
    operators.keys.each do |key|
      if key == word
        operator_words << word
      end
    end
    if /\d/.match(word)
      numbers << word.to_f
    end
  end
  operator_words.each do |operator_word|  
    operators.each do |key, value|
      if operator_word == key
        total = numbers.shift(2).reduce(value)
        numbers.unshift(total)
      end    
    end
  end
  total
end
