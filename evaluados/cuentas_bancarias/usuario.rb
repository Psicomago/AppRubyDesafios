require 'byebug'
class Usuario
  attr_reader :usuario
  attr_accessor :cuentas 
  def initialize (usuario, cuentas)
    raise ArgumentError, 'El atributo usuario debe ser de la clase string' if usuario.class != String
    raise ArgumentError, 'El atributo cuenta debe ser de la clase array o de la clase CuentaBancaria' if cuentas.class != Array && cuentas.class != CuentaBancaria
    cuentaArray = Array.new
    #cuentaArray = cuentas
    if cuentas.class == Array
      cuentas.each do |cuentaIngresada|
       if cuentaIngresada.class != CuentaBancaria
        raise ArgumentError, 'El atributo cuenta debe ser de la clase array o de la clase CuentaBancaria'
       else
        cuentaArray.push(cuentaIngresada)
       end
      end
    elsif cuentas.class == CuentaBancaria
        cuentaArray.push(cuentas)
    end
    @usuario = usuario
    @cuentas = cuentaArray
  end

  #sumar saldos de cuentas 
  def sumarSaldos
    saldoTotal = 0
    @cuentas.each do |cuentaUsuario|
      saldoTotal = saldoTotal + cuentaUsuario.saldo
    end
    return saldoTotal 
  end

#metodo agregar cuenta nueva
  def agregar_cuenta(cuenta3)
    cuentaExiste = false
    raise ArgumentError,'El atributo cuenta debe ser de la clase CuentaBancaria' if cuenta3.class != CuentaBancaria # valida si contiene algun carácter que no sea un número
    @cuentas.include?(cuenta3) ? cuentaExiste = true : cuentaExiste = false
    if cuentaExiste == true
      return "La cuenta ya existe"
    else
      @cuentas.push(cuenta3)
      return "La cuenta fue agregada con exito"
    end
  end 
end