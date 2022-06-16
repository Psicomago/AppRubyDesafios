# Crear la clase carta con los atributos numero y pinta. (1 Punto)
class Carta
  # Agregar los getters y setters a ambos atributos.(1 Punto)
  attr_reader :numero, :pinta
  attr_writer :numero, :pinta
  #Crear el constructor de la clase carta que le permita recibir un número del 1 al 13 y la
  # pinta que está indicada por una sola letra. Puede ser Corazón: 'C', Diamante: 'D',
  # Espada: 'E' o Trébol: 'T'. (2 Puntos)
  def initialize(numero, pinta)
    pintas = ["C", "D", "E", "T"]
    raise RangeError, 'El numero debe estar entre el rango 1 y 13' if numero < 1 || numero > 13
    raise ArgumentError, 'el Argumento numero no es valido, debe ser integer' if numero.class != Integer
    raise ArgumentError, 'el argumento pinta debe ser solo una letra'  if pinta.length != 1
    raise ArgumentError, 'Argumento no valido C=Corazón D=Diamante E=Espada T=Trebol'  if pintas.include?(pinta.upcase) == false
    @numero = numero
    @pinta = pinta.upcase
  end
  def nombreCarta
    return "Corazón" if @pinta == "C"
    return "Diamante" if @pinta == "D"
    return "Espada" if @pinta == "E"
    return "Trebol" if @pinta == "T"
  end
  
end

def main 
  arrayPinta = ["C", "D", "E", "T"]
  cartasObjArray = []

  #Probar la clase creando un arreglo con 5 cartas.(1 Punto)
    for idx in (1..(5))
      num = rand(1..13)
      cartasObjArray.push(Carta.new(num, arrayPinta.sample))
    end

  #imprime cartas seleccionadas
  puts "cartas creadas"
  5.times do |ind|
    print "#{cartasObjArray[ind].numero} de #{cartasObjArray[ind].nombreCarta} \n"
  end
end

#main() #dejar de comentar en caso de querer que el main se ejecute al llamar al programa