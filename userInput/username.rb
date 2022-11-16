# puts "Enter your name: "
# username = gets
# puts "Hello " + username

puts "Enter 'yes' or 'no'" 
response = gets.chomp

# p response

if response == "yes"
    puts "You said yes!"
end

if response == "no"
    puts "You said no!"
end 