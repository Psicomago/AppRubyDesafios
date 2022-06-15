class Carta
  attr_reader :numero, :pinta
  attr_writer :numero, :pinta
  def initialize(numero, pinta)
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