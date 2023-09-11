puts''   
puts "\e[34m  Welcome to my Mastermind Game  \e[0m ".center(50)
puts''
puts 'En este juego puedes ser el creador o el descifrador del código.'
puts''
puts 'El creador de códigos crea un código de 4 colores usando los colores que se muestran en la lista.'
puts''
puts 'El descifrador de códigos tiene sólo 12 oportunidades de adivinar el código'
puts ''
puts "\e[31m Las probabilidades pueden estar siempre a tu favor. \e[0m".center(50)


class Start
  LONGITUD_CODIGO = 4
  COLOR = ["r", "g", "c", "y", "o", "p", "b", "w"]
end

def comprobar_coincidencias(codigo_secreto, entrada)
  coincidencias = 0
  coincidencias_posicion = 0
  for i in 0..Start::LONGITUD_CODIGO - 1

    if codigo_secreto[i] == entrada[i]
         coincidencias_posicion += 1

    elsif codigo_secreto.include?(entrada[i])
         coincidencias += 1
    end
  end
  [coincidencias, coincidencias_posicion]
end