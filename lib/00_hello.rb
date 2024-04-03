def say_hello
    puts "Hello"
end

puts say_hello

def say_hello_name
    puts "What's tour name?"
    print ">"
    first_name = gets.chomp
    puts "Bonjour, #{first_name}"
end

puts say_hello_name