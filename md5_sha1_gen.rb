# This programm allow you to generate MD5 or SHA1 hashes
#
require 'digest'

# Ask user to input string and put it in variable text
puts 'Enter word or phrase for encrypting'
text = STDIN.gets.strip

# Ask user to choose method and put it in variable user_choice
puts "Please choose method: " \
     "1. MD5" \
     "2. SHA1"
user_choice = STDIN.gets.to_i

loop do
     if user_choice == 1 || user_choice == 2
       break
     else
       puts 'Please press 1 for MD5 or 2 for SHA1'
     end
end

encrypt_phrase = ''

# Print encrypted phrase
case user_choice
when 1
     encrypt_phrase = Digest::MD5.hexdigest(text)
when 2
     encrypt_phrase = Digest::SHA1.hexdigest(text)
end

puts "Here's what you got: #{encrypt_phrase}"