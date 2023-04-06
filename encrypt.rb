ALPHABET = ("A".."Z").to_a

def encrypt(text)
  # create an alphabet array using a range of a..z
  # convert 'text' into an array of letters
  # map over the letters
  # each letter -> find its index in the alphabet
  # if its a special character, we should leave it alone.
  # otherwise subract 3 from the index
  # compare to the alphabet
  # a's index is 0
  # join the new letters back together
  # "THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG"
  text.chars.map do |character|
    index = ALPHABET.index(character)
    index ? ALPHABET[index - 3] : character
  end.join
end


# Before Refactoring
# alphabet = ("A".."Z").to_a
# letters = text.chars.map do |letter|
#   if alphabet.include?(letter)
#     index = alphabet.index(letter)
#     new_index = index - 3
#     alphabet[new_index]
#   else
#     letter
#   end
# end
# letters.join
