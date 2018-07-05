def say_hello_first_name(first_name)

  puts "hello " + first_name

end

def ask_first_name
  puts "Entrez un nom"
  return gets.chomp.to_s
end

say_hello_first_name(ask_first_name)
