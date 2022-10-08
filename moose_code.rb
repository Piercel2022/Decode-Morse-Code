# instance variable storing Morse code alphabets
# rubocop:disable Metrics/MethodLength
def decode_char(char)
  morse_code = { '.-' => 'A',
                 '-...' => 'B',
                 '-.-.' => 'C',
                 '-..' => 'D',
                 '.' => 'E',
                 '..-.' => 'F',
                 '--.' => 'G',
                 '....' => 'H',
                 '..' => 'I',
                 '.---' => 'J',
                 '-.-' => 'K',
                 '.-..' => 'L',
                 '--' => 'M',
                 '-.' => 'N',
                 '---' => 'O',
                 '.--.' => 'P',
                 '--.-' => 'Q',
                 '.-.' => 'R',
                 '...' => 'S',
                 '-' => 'T',
                 '..-' => 'U',
                 '...-' => 'V',
                 '.--' => 'W',
                 '-..-' => 'X',
                 '-.--' => 'Y',
                 '--..' => 'Z' }
  morse_code[char]
end

# method to decode an entire word in Morse code
def decode_word(word)
  @letters = word.split
  @current_word = ' '
  @letters.each do |letter|
    decode_char(letter)
    @current_word += decode_char(letter)
  end
end

# method to decode an entire message in Morse code
def decode_message(message)
  @words = message.split('   ')
  @words.each do |word|
    decode_word(word)
  end
end
# rubocop:enable  Metrics/MethodLength