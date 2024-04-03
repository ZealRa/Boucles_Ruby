def signup
    puts "Merci de saisir un mot de passe"
    print ">"
    password = gets.chomp
    return password
end

def login(correct_password)
    puts "Veuillez entrer votre mot de passe :"
    print "> "
    input_password = gets.chomp
    until input_password == correct_password
      puts "Mot de passe incorrect. Veuillez réessayer :"
      print "> "
      input_password = gets.chomp
    end
    puts "Vous êtes connecté !"
    return true
  end


def welcome_screen
    puts "Bienvenue dans les secrets de THP"
 
end

def perform
    password = signup
    login_successful = login(password)
    if login_successful
      welcome_screen
    end
  end

  perform