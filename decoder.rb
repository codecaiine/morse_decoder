print 'Enter your morse code: '
morse_str = gets.chomp

def decode_char(character)
  dictionary = {
    'A' => '.-', 'B' => '-...', 'C' => '-.-.',
    'D' => '-..', 'E' => '.', 'F' => '..-.',
    'G' => '--.', 'H' => '....', 'I' => '..',
    'J' => '.---', 'K' => '-.-', 'L' => '.-..',
    'M' => '--', 'N' => '-.', 'O' => '---',
    'P' => '.--.', 'Q' => '--.-', 'R' => '.-.',
    'S' => '...', 'T' => '-', 'U' => '..-',
    'V' => '...-', 'W' => '.--', 'X' => '-..-',
    'Y' => '-.--', 'Z' => '--..'
  }

  dictionary.key(character) || ' '
end

def decode_word(morse_word)
  word = ''
  morse_word.split.each do |char|
    word += decode_char(char)
  end
  word
end

def decode_result(morse_result)
  result = []
  morse_result.split('   ').each do |word|
    result.push(decode_word(word))
  end
  result.join(' ')
end

puts "Your message is: #{decode_result(morse_str)}"