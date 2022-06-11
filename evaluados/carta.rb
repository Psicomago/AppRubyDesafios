class Carta
  attr_reader :numero, :pinta
  attr_writer :numero, :pinta
  def initialize(numero, pinta)
    @numero = numero
    @pinta = pinta.upcase
  end
end