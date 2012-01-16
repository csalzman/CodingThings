# This function will break up words for us.
def break_words(sentence)
  words = sentence.split(' ')
  return words
end

# Sorts the words.
def sort_words(sort_sentence)
  word = sort_sentence.sort()
  return word
end

# Prints the first word after popping it off.
def puts_first_word(words)
  word = words.shift
  puts word
end

# Prints the last word after popping it off.
def puts_last_word(words)
  word = words.pop
  puts word
end

# Takes in a full sentence and returns the sorted words.
def sort_sentence(sentence)
  words = break_words(sentence)
  return words.sort()
end

# Puts the first and last words of the sentence.
def puts_first_and_last(sentence)
  words = break_words(sentence)
  puts_first_word(words)
  puts_last_word(words)
end

# Sorts the words then prints the first and last one.
def puts_first_and_last_sorted(sentence)
  words = sort_sentence(sentence)
  puts_first_word(words)
  puts_last_word(words)
end

#defines the sentence we'll be using
sentence = "All good things come to those who wait."

#breaks up words into an array
words = break_words(sentence)
puts "break_words"
puts words
#sorts the words
sorted_words = sort_words(words)
puts "sorted_words"
puts sorted_words

#prints first word from original sentence
puts "puts_first_word(words)"
puts_first_word(words)
#prints last word from original sentence
puts "puts_last_word(words)"
puts_last_word(words)
#prints first word from sorted array
puts "puts_first_word(sorted_words)"
puts_first_word(sorted_words)
#prints last word from sorted array
puts "puts_last_word(sorted_words)"
puts_last_word(sorted_words)

#prints sorted sentence
puts "sorted_words = sort_sentence(sentence)"
sorted_words = sort_sentence(sentence)
puts sorted_words

#prints first and last word from sentence
puts "puts_first_and_last(sentence)"
puts_first_and_last(sentence)

#prints first and last word from sorted sentence
puts "puts_first_and_last_sorted(sentence)"
puts_first_and_last_sorted(sentence)

