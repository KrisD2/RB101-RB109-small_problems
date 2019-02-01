BLOCK = { B: 'O', X: 'K', D: 'Q', C: 'P', N: 'A',
          G: 'T', R: 'E', F: 'S', J: 'W', H: 'U',
          V: 'I', L: 'Y', Z: 'M' }

def block_word?(str)
  used_letters = []
  str.chars.each do |letter|
    letter = letter.upcase
    used_letters << letter
    used_letters << BLOCK[letter.to_sym] if BLOCK.has_key? letter.to_sym
    used_letters << BLOCK.key(letter).to_s if BLOCK.key(letter)
  end
  used_letters.size == used_letters.uniq.size
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true