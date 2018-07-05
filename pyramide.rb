def stage
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu (25 max)?"
  stage = gets.chomp.to_i
  while stage > 25
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu (25 max)?"
    stage = gets.chomp.to_i
  end
  return stage
end

def pyramide(stage)
  for i in 1..stage
	   stage -= 1
	   puts " " * stage  + "#" * i
  end
end

def odd_pyramide(stage)
  j = 1
  for i in 1..stage
     stage -= 1
     puts " " * stage  + "#" * j
     j = j + 2
  end
end

odd_pyramide(stage)
