#fonction pour avoir les resultat du dé
def result 
	puts "Lancée votre dé"
	opt = rand (1..6)
end

def option (opt,point)
case opt
	when 1 #----------------quand le dé est egale 1
		point = -1
		puts "Descend d'une Marche"
	when 2,3,4#-------------quand le dé est egale a 2 3 4 
		point = 0
		puts "Monte d'une Marche"
	else#-------------quand le dé est egale a 2 3 4 
		point = 1
		puts "Monte d'une marche"
end
puts "Tu dois faire #{point} pas"
return point
end

def game
	point = 0 #mon point au depart
	tour = 1 # le tour au depart
	while point < 10

		puts "*******************" #juste style
		puts "Vous éte maintenant au #{tour} tour "
		puts "votre position au debut est au #{point} "
		opt = result
		puts "Tu as eu le chifre #{opt}"
		point = point + option(opt,point)# pour avoir les chiffre du dé
		if point < 0
			point = 0
		end
		puts "Taposition en fin de tour est #{point}"
		tour = tour + 1
	end
	puts "****BRAVO GAGNÉ*****"
	return tour
end

def tab_stat #un fonction pour enregistré les tour
	nmbr=[] #declaration d'un tableau
	100.times do
		nmbr << game # faire entré dans un tableau le tour fait par le jeu pendant 10 partie
	end
	return nmbr
end

def average_finish_time
	somme = 0 #declaration d'un variable pour le somme des partie
	tableau_game = tab_stat #tableau qui stock tout les 100 partie simmuler
	tableau_game.each do |nb|
		somme = somme + nb #la somme va etre augmenter par les nombre dans le tableau
	end
	n = tab_stat.length #savoir le nombre de la case du tableau
	stat = somme/n #qui est la formule de la statistique qui est la somme des nombre du tableau sur le nombre de case du tab
	puts ""
	puts "--------RESULTAT STATISTIQUE--------"
	puts "le jeux prend en moyenne #{stat} tour pour les 10 marche"
end 

average_finish_time