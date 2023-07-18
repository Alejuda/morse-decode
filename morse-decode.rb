$binary_tree = [nil, "E", "T", "I", "A", "N", "M", "S", "U", "R", "W", "D", "K", "G", "O", "H", "V", "F", "U", "L", "A", "P", "J", "B", "X", "C", "Y", "Z", "Q", "O", "CH"]

def decode_character(string)
  letter_index = 0
  string.each_char.with_index do |char, index|
    if char == "-"
      letter_index = 2 * letter_index + 2
    elsif char == "."
      letter_index = 2 * letter_index + 1
    end
    if index == string.length - 1
      return "#{$binary_tree[letter_index]}"
    end
  end
end

def decode_word(string)
  word = ""
  word_letters = string.split(" ")
  word_letters.each do |letter|
    word += decode_character(letter)
  end
  return word
end

def decode_message(string)
  message = ""
  words = string.split("   ")
  words.each do |word|
    message += decode_word(word)
    message += " "
  end
  return message
end

string = ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."
print (decode_message(string))