#!/usr/bin/env ruby
puts "What do you want to say?"
input = gets.chomp

def playback line
  puts "You said: "+line
end

if input == "Nothing!"
	puts "Ok, fine!"
elsif input == "I have a lot to say"
	puts "I don't have time for that right now!"
else
	playback(input)
end
