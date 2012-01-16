# This function will break up words for us.

def break_words(sentence)
  words = sentence.split(' ')
  return words
end

# Sorts the words.

def sort_words(words)
  word = words.sort()
  return word
end

# Prints the first word after popping it off.

def puts_first_word(words)
  word = words.pop(0)
  puts word
end

# Prints the last word after popping it off.

def puts_last_word(words)
  word = words.pop(-1)
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

#Just prints the two lines with escaped characters

puts "Let's practice everything."
puts "You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs."

#defines a multiline string

multiline = <<POEM

\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explantion
\n\t\twhere there is none.

POEM

#prints the multiline string with a few lines of dashes above and below

puts "--------------"
puts multiline
puts "--------------"

#defines a variable that equals five and then prints a line with that variable
thisisfive = 10-2+3-6
puts "This should be five: #{thisisfive}"

#function to figure out how many jelly beans, jars and crates you need for a number
def secret_formula(started)
  jelly_beans = started * 500
  jars = jelly_beans / 1000
  crates = jars / 100
  return jelly_beans, jars, crates
end

start_point = 10000
beans, jars, crates = secret_formula(start_point)

puts "With a starting point of: #{start_point}"
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates." 

start_point = start_point / 10

puts "We can also do that this way:"
puts "We'd have %d beans, %d jars, and %d crates." % secret_formula(start_point)


sentence = "All good things come to those who wait."

words = break_words(sentence)
sorted_words = sort_words(words)

puts_first_word(words)
puts_last_word(words)
puts_first_word(sorted_words)
puts_last_word(sorted_words)
sorted_words = sort_sentence(sentence)
puts sorted_words

puts_first_and_last(sentence)

puts_first_a_last_sorted(sentence)

