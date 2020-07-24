# base de la pyramide full
def base
  nombre = @nombre
  b = 1# initiation nombre de diese
  nombre.times do |i|#faire un boucle qui affiche des espaces et des dieses
    if i == 0 # ne pas prendre le i==0
      next
    end
    espace = "  "#declaration de l'espace
    has = "# " #declaration du diese
    
    c = nombre - i # nombre d'espace
    a = nombre - c # pre-formule pour avoir le nombre de diese
    puts " #{espace*=c} #{has=has*b}"
    b = (i + 2 + a)-1# formule pour avoir le nombre de diese
  end

end

# le pyramide a un face
def half_pyramid
    puts "entrer un nombre d'etage de votre choix"
    nombre = gets.chomp.to_i
    nombre += 1

  nombre.times do |j|
    has = "# "
    puts " #{has*=j}" #afficher le diese fois "j" fois
  
  end
end 

#full pyramide construit apartir de la base
def full_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"

  @nombre = gets.chomp.to_i
  @nombre = @nombre + 1 #formule pour le nombre d'etage desiré
  base() #appelle de la fonction base
end

def wtf_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
  @nombre = gets.chomp.to_i
  @nombre = (@nombre/2)+1 #formule pour le nombre d'etage desiré
    base()  #appelle de la fonction base
    nombre=@nombre
  nombre.times do |i|
    if i == 0 && i == 1# pour que la pyramide en bas soit -1 que pyramide haut
      next
    end
    espace = "  "
    has = "# "
    h = (nombre- i)*2 #pre-formule avant pour faire le nombre de diese
    l = h - 1 #formule pour avoir le nombre de diese
    puts " #{espace*=i} #{has*=l}"
  end
end

#fonction pour choisir les pyramide
def choix
  puts " bienvenue dans le programme pyramide \n Choisi entre 1 2 3 \n 1- Half pyramide (seule face) \n 2- full pyramide (vrais pyramide) \n 3- wtf pyramide (double pyramide)"
  print ">>>>> " 
  user = gets.chomp.to_i
  if user == 1 
    half_pyramid
  elsif user == 2
    full_pyramid
  elsif user == 3
    wtf_pyramid
  else
    puts " Mauvais choix veillez recommencer le programme "
  end

end

choix