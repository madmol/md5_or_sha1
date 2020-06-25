# This programm allow you to generate MD5 or SHA1 hashes
#
require 'digest'

# Ask user to input string and put it in variable text
puts 'Enter word or phrase for encrypting'
text = STDIN.gets.strip

user_choice = ''

# Ask user to choose method and put it in variable user_choice
until (1..2).include?(user_choice)
  puts "Please choose method: "
  puts "1. MD5"
  puts "2. SHA1"
  user_choice = STDIN.gets.to_i
end

# Print encrypted phrase
encrypt_phrase =
  case user_choice
  when 1
    Digest::MD5.hexdigest(text)
  when 2
    Digest::SHA1.hexdigest(text)
  end

puts "Here's what you got: #{encrypt_phrase}"
