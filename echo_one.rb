#!/usr/bin/env ruby
puts "What do you want to say?"
input = gets.chomp

def playback line
  puts "You said: "+line
end

playback(input)