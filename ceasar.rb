# Split string into character array, get ascii value for each character
# 65 - 90 for A-B
# 97 - 122 for a-b

def ceasar_cipher
  p('Give me a message')
  text = gets.chomp
  p('Give me a number to work with')
  number = gets.chomp.to_i

  result = text.chars.map do |letter|
    if letter.match(/[a-z]/)
      if letter.ord + number > 122
        (letter.ord + number - 26).chr
      else
        (letter.ord + number).chr
      end
    elsif letter.match(/[A-Z]/)
      if letter.ord + number > 90
        (letter.ord + number - 26).chr
      else
        (letter.ord + number).chr
      end
    else
      letter
    end
  end
  p result.join('')
end

ceasar_cipher
