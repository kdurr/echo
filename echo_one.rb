#!/usr/bin/env ruby
puts "What do you want to say?"
input = gets.chomp

responses = []

def playback_first line
  puts "You said: "+line
end

def playback_middle line
  puts "Then, you said: "+line
end

def playback_last line
  puts "Finally you said: "+line
  puts "Phew! Glad you got all COUNT of these things off your chest!"
end

  if input == "Nothing!"
    puts "Ok, fine!"

  elsif input == "type" # "I have a lot to say"
      puts "Ok, let's hear it!"
    while input != 'done'
    input = gets.chomp
    responses << input
    end
  end

  first = responses.first
  last = responses[-2]

responses.each do |x|
  if x == first
    playback_first(first.to_s)
  elsif x == last
    playback_last(last.to_s)
  else
    playback_middle(x)
  end
end

