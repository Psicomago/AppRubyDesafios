class CuentaBancaria
  attr_reader :banco, :cuenta
  attr_accessor :saldo, :usuarioCuenta
  def initialize(banco,cuenta,saldo=0)
    #***validadación de excepciones
    raise ArgumentError, 'El atributo banco debe ser de la clase string' if banco.class != String
    raise ArgumentError, 'El atributo cuenta debe ser de la clase string' if cuenta.class != String
    raise ArgumentError,'ingrese solo digitos en el atributo cuenta' if cuenta.match(/\D/).nil? == false # valida si contiene algun carácter que no sea un número
    raise ArgumentError,'El atributo saldo debe ser de la clase integer' if saldo.class != Integer
    raise RangeError, 'El largo del atributo cuenta debe se de 8 digitos' if cuenta.length != 8
    raise RangeError, 'El atributo saldo no puede ser negativo ' if saldo < 0
    @banco = banco
    @cuenta = cuenta
    @saldo = saldo
    @usuarioCuenta = ""

    #3- Crear el método transferir en la clase Cuenta que reciba un monto y otra cuenta. Este
    # # método restará del saldo actual el monto y aumentará el saldo de la otra cuenta en el mismo monto. (1 Punto  
    def transferir(cuenta2,monto)
      raise ArgumentError,'El atributo cuenta debe ser de la clase CuentaBancaria' if cuenta2.class != CuentaBancaria # valida si contiene algun carácter que no sea un número
      raise ArgumentError,'El atributo monto debe ser de la clase integer' if monto.class != Integer
      raise RangeError, 'El atributo monto no puede ser negativo ' if monto < 0
      return "Saldo insuficiente" if @saldo < monto
      return "El monto debe ser mayor que cero" if monto == 0
      if @saldo >= monto
        @saldo -= monto
        cuenta2.saldo += monto
        return "Transferencia aprobada" #return print "saldo cuenta1 #{@saldo}  #{cuenta2.saldo}" 
      end
    end
  end
end