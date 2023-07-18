binary_tree = [nil, 'E', 'T', 'I', 'A', 'N', 'M', 'S', 'U', 'R', 'W', 'D', 'K', 'G', 'O', 'H', 'V', 'F', 'U', 'L', 'A',
               'P', 'J', 'B', 'X', 'C', 'Y', 'Z', 'Q', 'O', 'CH']

def decode_character(string, binary_tree)
  letter_index = 0
  string.each_char do |char|
    letter_index = (2 * letter_index) + (char == '-' ? 2 : 1)
  end
  binary_tree[letter_index].to_s
end

def decode_word(string, binary_tree)
  word_letters = string.split
  word_letters.map { |letter| decode_character(letter, binary_tree) }.join
end

def decode_message(string, binary_tree)
  words = string.split('   ')
  words.map { |word| decode_word(word, binary_tree) }.join(' ')
end

string = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
puts(decode_message(string, binary_tree))
