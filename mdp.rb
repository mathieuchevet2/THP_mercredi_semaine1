def define_password
  puts "Entrez un mot de passe"
  @user_password = gets.chomp
end

def ask_password
  puts "Entrez un mot de passe pour vous connecter"
  @password = gets.chomp
end

def password_verification
  puts "Entrez votre mot de passe pour verifier"
  return @user_password == gets.chomp
end

def perform
  define_password
  puts password_verification
end

def connect(password)
  while password != @user_password
    ask_password
  end
  if password == @user_password
    puts "You are online"
  end
end

perform
ask_password
connect(@password)
