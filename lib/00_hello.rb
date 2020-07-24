def ask_first_name
    # cette ligne contient par l'utilisateur d'entrer le prenom
    puts "Entrez votre prenom ici"
    prenom = gets.chomp
end

def say_hello(prenom)
    #Appel de prenom
    puts "Bonjour , #{prenom}"
end

puts say_hello(ask_first_name)
