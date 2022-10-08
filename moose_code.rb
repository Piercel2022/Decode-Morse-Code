# instance variable storing Morse code alphabets
@moose_code_alphabet = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'c',
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
  '--..' => 'Z'
}

# method to decode a Morse code character
# Result is in uppercase
def decode_char(letter)
  @current_char = @moose_code_alphabet[letter].upcase
  @current_char
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

