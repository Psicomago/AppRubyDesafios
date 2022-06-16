class Carta
  attr_reader :numero, :pinta
  attr_writer :numero, :pinta
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