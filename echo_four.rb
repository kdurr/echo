#!/usr/bin/env ruby
# Initialize our hash with nothing in it.

def playback line
  puts "You said: #{line}"
end

puts "What do you want to say?"
counts = {}

# Splits a string into an array of words.
input = gets.chomp
letters = input.split(%r{\s*}) 

# Loop through each word found in the string...
letters.each do |letter|

  # If the letter hasn't been seen before, initialize the count to zero.
  unless counts.has_key?(letter)
    counts[letter] = 0
  end

  # Increment the count for the word by one.
  counts[letter] += 1
end


sorted_count = counts.sort_by {|k,v| v}.reverse

playback(input)
#identify the second most used character in the user's input
puts sorted_count[1][0].to_s + " is the second most used character in what you said."
puts sorted_count[1][0].to_s + " was used a total of " + sorted_count[1][1].to_s + " times."


# *********Validation Question************
#this print out the count of each letter,
#how do you grab the second highest value only?

# sorted_count.each do |letters, count|
# 	puts "#{letters} appeared #{count} time(s)."
# end