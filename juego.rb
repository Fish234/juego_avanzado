def menu 
    
    puts "Turno jugador uno: "
    puts "1) Piedra"
    puts "2) Papel"
    puts "3) Tijera"
    puts "4) Salir"
    
end

def menu2 
    
    puts "Turno jugador dos: "
    puts "1) Piedra"
    puts "2) Papel"
    puts "3) Tijera"
    puts "4) Salir"
    
end

puts menu
jugador1 =gets.to_i

until jugador1 == 1 || jugador1 == 2 || jugador1 == 3 || jugador1 == 4
    
    puts "Esta opción no es válida, ingresa una del menu"
    jugador1 =gets.to_i    
end

if jugador1 == 1
    eleccion1 = "piedra" 
elsif jugador1 == 2
    eleccion1 = "papel" 
elsif jugador1 == 3
    eleccion1 = "tijera" 
end
print "\n"

if jugador1 != 4
    
    puts menu2
    jugador2 =gets.to_i
    puts ""

    until jugador2 == 1 || jugador2 == 2 || jugador2 == 3 || jugador2 == 4
        puts "Esta opción no es válida, ingresa una del menu"
        jugador2 =gets.to_i
    end
    
    if jugador2 == 1
        eleccion2 = "piedra" 
    elsif jugador2 == 2
        eleccion2 = "papel" 
    elsif jugador2 == 3
        eleccion2 = "tijera" 
    end
end


if jugador2 == 1 || jugador2 == 2 || jugador2 == 3
    if eleccion1 == 'piedra' && eleccion2 == 'piedra' || eleccion1 == 'papel' && eleccion2 == 'papel' || eleccion1 == 'tijera' && eleccion2 == 'tijera'
        
        puts "Empate"
      
    elsif eleccion1 == 'piedra' && eleccion2 == 'tijera' || eleccion1 == 'papel' && eleccion2 == 'piedra' || eleccion1 == 'tijera' && eleccion2 == 'papel'
        
        puts "Ganó el jugador 1." 
    else
        
        puts "Ganó el jugador 2"
    end
end