#!/usr/bin/env ruby
puts "What do you want to say?"
input = gets.chomp

def playback line
  puts "You said: "+line
end

responses = []

  if input == "Nothing!"
  	puts "Ok, fine!"

  elsif input == "I have a lot to say"
      puts "Ok, let's hear it!"
    while input != 'done'
    input = gets.chomp
    responses << input
    end
  end

responses.each do |x|
  playback(x)
end