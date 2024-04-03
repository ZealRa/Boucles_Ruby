def half_pyramid
puts "Veuillez entrer un nombre entre 1 et 25 :"
nombre_etages = gets.chomp.to_i

if nombre_etages < 1 || nombre_etages > 25
  puts "Le nombre doit être compris entre 1 et 25."
else
  puts "Voici la pyramide qui descend inversée:"
    nombre_etages.times do |i|
      espaces = " " * (nombre_etages - i - 1)
      etages = "#" * (i + 1)
    puts espaces + etages
  end
end
end

def full_pyramid
    puts "Veuillez entrer un nombre entre 1 et 25 :"
    nombre_etages = gets.chomp.to_i
    
    if nombre_etages < 1 || nombre_etages > 25
      puts "Le nombre doit être compris entre 1 et 25."
    else
      puts "Voici la pyramide :"
      1.upto(nombre_etages) do |n|
        espaces = " " * (nombre_etages - n)
        symboles = "#" * (2 * n - 1)
        puts espaces + symboles
      end
    end    
end   

def wtf_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
    print ">"
    size = gets.chomp.to_i

    if size.even?
        puts "Nous avons demandé un chiffre pair!"  
    else    
    (1..size).each do |i|
        print " " * (size - i)
        puts "#" * (2 * i -1)
    end
    
    (size - 1).downto(1) do |i|
        print " " * (size - i)
        puts "#" * (2 * i -1)
    end
    end
end   

wtf_pyramid