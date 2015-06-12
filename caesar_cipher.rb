def caesar_cipher(message, key)
  alphabet = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
  letters = message.downcase.split(//)
  encoded_message = ""
  letters.each do |letter|
    if alphabet.include? letter
      letter_index = alphabet.index(letter)
      encoded_index = letter_index + key
      if encoded_index > 25
        encoded_index -= 26
      end
      encoded_message += alphabet[encoded_index]
    else
      encoded_message += letter
    end
  end
  encoded_message.capitalize
end
