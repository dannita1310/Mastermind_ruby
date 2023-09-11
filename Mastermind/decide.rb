require_relative "start"

class Decide
  def decide
    puts 'Presione 1 si desea ser el creador de códigos o presione 2 si desea ser el descifrador de códigos'
    decision = gets.chomp.downcase
    if decision == '1'
      c_intento = 0
      puts 'Ingrese su código secreto aquí para que la computadora lo adivine.'
      puts 'Example: Rojo Azul Morado Verde'
      player_code = gets.chomp.split
      for intento in 1..12
        p_code = Start::COLOR.sample(Start::LONGITUD_CODIGO)
        sleep(1)
        puts ''
        c_match, c_posicion = comprobar_coincidencias(p_code, player_code)
        c_intento += 1
        puts "Conjetura por computadora: #{p_code} Intento de color: [#{c_intento}] Coincidencia: [#{c_match}] Coincidencia de posición: [#{c_posicion}]"

        if p_code == player_code
          puts 'La computadora descifró el código.! :/'
          puts "#{p_code}"
        else
          puts 'La computadora no pudo descifrar su código'
        end
      end
    end
    if decision == '2'
      code = Start::COLOR.sample(Start::LONGITUD_CODIGO)

      
      attempt = -1
      for intento in 1..12
        puts 'Ingrese su suposición con base a esta lista ["Rojo(r)", "Verde(g)", "cyan(c)", "Amarillo(y)", "Naranja(o)", "Morado(p)", "Negro(b)", "Blanco(w)"]'
        answer = gets.chomp.split
        match, posicion = comprobar_coincidencias(code, answer)
        intento += 1
        puts "Intento de color: #{intento} Coincidencia: #{match} Coincidencia de posición: #{posicion}"
   
      if answer == code
        puts '¡Felicitaciones! Le ganaste a la computadora'
        puts "#{code}"
        return
      else
        puts 'No pudiste descifrar el código, intenta de nuevo!'
      end
    end
    end
  end
end