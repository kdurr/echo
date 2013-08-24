#!/usr/bin/env ruby
puts "What do you want to say?"
input = gets.chomp
 
responses = []
 
def playback_first(line)
  puts "You said: #{line}"
end
 
def playback_middle(line)
  puts "Then, you said: #{line}"
end
 
def playback_last(line)
  puts "Finally you said: #{line}"
  puts "Phew! Glad you got all #{@count} of these things off your chest!"
end
 
def validate_file
  @file_name = gets.chomp
  if @file_name != "speech.txt"
    puts "I couldn't find that file."
    puts "Where can I find what you want to say?"
    @file_name = gets.chomp
  end
end

def open_file
  File.read(@file_name)
end


  if input == "Nothing!"
    puts "Ok, fine!"

  elsif input == "I have something prepared"
    puts "OK, where can I find what you want to say?"
    validate_file
    puts "Loading speech.txt..."
    open_file
    file_array = open_file.split(/\n/)
    responses = file_array

  elsif input == "I have a lot to say"
      puts "Ok, let's hear it!"
    while input != 'done'
    input = gets.chomp
    responses << input
    end
  end
 
  first = responses.first
  last = responses[-2]
  responses.pop
  @count = responses.length
 
responses.each do |x|
  if x == first
    playback_first(first.to_s)
  elsif x == last
    playback_last(last.to_s)
  else
    playback_middle(x)
  end
end
