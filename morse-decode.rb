$binary_tree = []

def decode_character(string)
  letter index = 0
  string.each_char.with_index do |char, index|
    if char == "-"
      letter index = 2 * letter_index +2
    elseif char == "."
      letter_index = 2 * letter_index + 1
    end
    if index = string.length - 1
      return "#{binary_tree}[letter_index]}"
    end
  end
end

def decode_word(string)
  word = ""
  word_letters = string.split("  ")
  word_letters.each do |letter|
    word += decode_character(letter)
  end
  return word
end
