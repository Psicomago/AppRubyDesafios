require_relative 'carta.rb'
require 'byebug'
class Baraja
  attr_reader :cartas, :totalCartas
  attr_writer :cartas, :totalCartas
  def initialize(cartas=[],manoObj=[])
    arrayPinta = ["C", "D", "E", "T"]
    @totalCartas = 0 #contador de cartas
    arrayPinta.each do |pinta|
    @cartas = cartas
    @manoObj = manoObj
      for idx in (1..(13))
        @cartas.push(Carta.new(idx, pinta))
        @totalCartas += 1
        # print "#{@cartas}"
      end
    end 
  end

  def barajar
    @cartas.shuffle!
  end
  def sacar
    if @totalCartas >= 1
      @totalCartas -= 1
      @cartas.shift
    else 
      puts "No quedan cartas en el mazo"
    end

  end
  def repartirMano
    if @totalCartas >= 5
      5.times do |ind|
        @totalCartas -= 1
        @manoObj.push(@cartas.shift)
      end
      return @manoObj
    else
      puts "Quedan menos de 5 cartas, no se puede repartir una mano"
    end
  end

  def ordenar 
    initialize()
    return "baraja ordenada"
  end
end

def main
  baraja1 = []
  jugador1 = []
  
  baraja1 = Baraja.new
  baraja1.barajar

  #en este bloque se reparten 5 cartas y muestra la mano del jugador 1
  # **** ¡IMPORTANTE! ****
  # jugador1 recibe el array generado por el metodo de instancia repartir
  #como jugador1 es un array y el metodo de instancia tambien genera un array,
  #si se usa push, jugador1 queda como un array de un elemento que contiene otro array de 5 elementos
  #pero, al asignarlo con =, jugador1 queda como un arreglo de 5 elementos. probe ambas y opte por asignarlo con =.
  
  #**** bloque de codigo en caso de utilizar push
  # jugador1.push(baraja1.repartir)
  # jugador1[0].count.times do |idx| #jugador[0] nos situa en el array de un elemento y con times recorremos los elementos de array interno
  #   print "#{jugador1[0][idx].numero} de #{jugador1[0][idx].pinta} \n"
  # end

  jugador1 = baraja1.repartirMano
  puts "cartas repartidas al jugador1"
  jugador1.count.times do |idx| #jugador[0] nos situa en el array de un elemento y con times recorremos los elementos de array interno
     print "#{jugador1[idx].numero} de #{jugador1[idx].nombreCarta} \n"
     #print "cartas en el mazo #{baraja1.totalCartas} \n"
   end
  #sacar una carta
  cartaRobada = baraja1.sacar #cartaRobada adquiere la clase carta
  puts "prueba del metodo sacar" 
  print "saco la carta #{cartaRobada.numero} de #{cartaRobada.nombreCarta}\n"
  #print "cartas en el mazo #{baraja1.totalCartas} \n"
end

#main() # activar en caso de querer probar el codigo automaticamente