def pyramide
  j = 10 #compteur d'espace
  l = 20 # compteur pour localiser la position dans la descente
  for i in 1..10
	   j -= 1
     l -= 1
     if i == @pos
       k = j - 1 # nombre d'espace -1 pour inserer le perso
       puts " " * k + "8"  + "XX" * i
     elsif l == @pos
       puts " " * j  + "XX" * i + "8"
     else
	     puts " " * j  + "XX" * i
     end

  end
end

def de
  @de = rand(1..6)
  puts "Vous avez tiré la face #{@de}"
end

def stage
  case @de
  when 1
    if @pos != 9
      @pos += 1
    end
  when 5,6
    @pos -= 1

  end

end

def sommet # le perso est afficher au sommet si il a atteint la pos 1
  if @pos == 1
    puts " " * 9 + "8"
    @pos = 20
  end
end

def continu
  puts "Relancer le dé ? (0 stop 1 continue)"
  return gets.chomp.to_i
end

@pos = 9
partie = 1

while (partie == 1)
  de
  sommet
  pyramide
  stage
  partie = continu
  if @pos == 10
    puts "Vous avez gagné"
    partie = 0
  end
end
