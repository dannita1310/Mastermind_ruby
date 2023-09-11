class Again
  def again
    puts 'Ingrese "Y" si desea volver a jugar o "N" si desea salir'
    response = gets.chomp.capitalize
    if response == 'Y'
      decide
    else
      puts 'Okay, Gracias por jugar!'
    end
  end
end