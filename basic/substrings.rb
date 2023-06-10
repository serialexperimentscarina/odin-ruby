
# Implements a method #substrings that takes a word as the first argument 
# and then an array of valid substrings (dictionary) as the second 
# argument. It should return a hash listing each substring (case insensitive) 
# that was found in the original string and how many times it was found.

def substrings(string, dictionary)
  listing = {}
  string.downcase!

  for word in dictionary
    if string.include?(word)
      occurences = string.scan(word).length
      listing[word] =  occurences if occurences > 0
    end
  end
  listing
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)