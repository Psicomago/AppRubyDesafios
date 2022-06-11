#Crear la clase con el nombre CuentaBancaria (1 Punto)
class CuentaBancaria
  #Los métodos getter y setter para el atributo nombre_de_usuario (1 Punto
  attr_reader :usuario, :cuenta, :vip
  attr_writer :usuario, :cuenta, :vip
#   Crear el constructor que reciba el nombre_usuario y numero_de_cuenta y lo asigne a los atributos. (1 Punto)
  def initialize(usuario, cuenta, vip=0) # VIP este valor puede ser 1 o 0. Por defecto será 0.
  # Levantar una excepción del tipo RangeError si el atributo numero_de_cuenta tiene un número de dígitos distinto a 8.
    raise ArgumentError, 'usuario no es string' if usuario.class != String
    raise ArgumentError, 'cuenta no es string' if cuenta.class != String
    raise ArgumentError,'ingrese solo digitos en cuenta' if cuenta.match(/\D/).nil? == false # valida si contiene algun carácter que no sea un número
    raise RangeError, 'es largo de la cuenta debe se de 8 digitos' if cuenta.length != 8
    raise RangeError, 'el valor vip debe ser 0 ó 1 ' if vip < 0 || vip > 1
    @usuario = usuario
    @cuenta = cuenta
    @vip = vip  #Agregar un tercer parámetro opcional al constructor que permita establecer si una cuenta es VIP (1pto).
  end

  # Crear un método llamado numero_de_cuenta que devuelva con el número de cuenta 
  # con un prefijo '1-' si es vip y '0-' si no lo es.
  # Ejemplo: si la cuenta es VIP y el número 00112233, el método debería devolver
  # '1-00112233'. (1 Punto
  def numero_de_cuenta()
    if @vip == 0
      numcuenta = "0-" + @cuenta
    else
      numcuenta = "1-" + @cuenta
    end  
  end
end


