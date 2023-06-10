
# Implements a caesar cipher that takes in a string and the shift factor and then outputs the modified string

def caesar_cipher(plaintext, position)
  ascii = plaintext.bytes
  modif_string = ""

  for ascii_value in ascii
    if ascii_value >= 65 && ascii_value <= 90
      ascii_value = (ascii_value + position - 65) % (90 - 65 + 1) + 65
    end
    if ascii_value >= 97 && ascii_value <= 122
      ascii_value = (ascii_value + position - 97) % (122 - 97 + 1) + 97
    end
    modif_string += ascii_value.chr
  end

  modif_string
end

encrypted_text = caesar_cipher("What a string!", 5)
puts(encrypted_text)

