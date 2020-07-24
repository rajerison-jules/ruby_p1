#demander nom d'utilisateur + mot de pass
#stocker nom d'utilisateur +mot de pass dans un variable
#verifier si l'utilisateur a entre des valeurs valides

#-------secret-----------#
secret = {
    depot: "1.256.000.000$",
    rib: "15785 89654 00001458712 24",
    banque_login: {
        identifiant: "Besosy",
        password: "azertyuiop"
    },
}

#----------sign up --------------#
puts "Entrez votre nom d'utilisateur"
user_name= gets.chomp

puts "Entrez votre mot de passe"
user_password= gets.chomp

def sign_up (sign, pass)
    #condition pour verifier si l'utilisateur n'a pas saisit une valeur vide
    if (!sign.empty?) && (!pass.empty?)
        puts "Felicitations, vous etes inscrit sur le plateforme!"
    elsif (sign.empty?) && (pass.empty?)
        abort("Fail")
        
    end
end
sign_up(user_name, user_password)

#comparer si user_name et password == user_name 2 et password 2
#si == alors login + apparition secret
#else reesayer 3 fois

#-----------login--------------#
puts "entrez votre nom d'utilisateur: "

user_name2 = gets.chomp

puts "entrez votre mot de passe"

user_password2 = gets.chomp

for i in 1..3
    if (user_name2 == user_name) && (user_password2 == user_password)
        #acceuil
        puts "Vous etes connectes"
        puts "Bienvenue dans votre zone secret"
        puts "Voici votre compte bancaire: #{secret}"
        break
    else
        puts "reesayer svp! (3 tentatives seulement)"
        puts "entrez a nouveau votre nom d'utilisateur: "
        user_name2 = gets.chomp
        puts "entrez a nouveau votre mot de passe"
        user_password2 = gets.chomp
    end
end