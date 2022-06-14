require_relative 'cuentaBancaria.rb'
require_relative 'usuario.rb'
# probar las clases CuentaBancaria y Usuario
def main

  #crear cuentas Bancarias
  cuenta1=CuentaBancaria.new('Estado','12345678',5000)
  cuenta2=CuentaBancaria.new('Chile','87654321',5000)
  cuenta3=CuentaBancaria.new('Santander','43218765',5000)
  cuenta4=CuentaBancaria.new('Itau','76543218',5000)
  puts "cuentas creadas"
  print "banco #{cuenta1.banco} cuenta N° #{cuenta1.cuenta} saldo $ #{cuenta1.saldo}\n"
  print "banco #{cuenta2.banco} cuenta N° #{cuenta2.cuenta} saldo $ #{cuenta2.saldo}\n"
  print "banco #{cuenta3.banco} cuenta N° #{cuenta3.cuenta} saldo $ #{cuenta3.saldo}\n"
  print "banco #{cuenta4.banco} cuenta N° #{cuenta4.cuenta} saldo $ #{cuenta4.saldo}\n"
  puts ""


  #crear cliente con solo una cuenta
  puts "Crear cliente con una sola cuenta"
  cliente1 = Usuario.new('Carlos', cuenta1)

  print "Cliente: #{cliente1.usuario} cuenta banco: #{cliente1.cuentas[0].banco} N°: #{cliente1.cuentas[0].cuenta} saldo $ #{cliente1.cuentas[0].saldo} \n"
  puts ""

  #crear cliente con un array de cuentas
  puts "Crear cliente con arreglo de cuentas"
  cuentaArray = []
  cuentaArray.push(cuenta2,cuenta3)
  cliente2 = Usuario.new('Marta', cuentaArray)
  print "cliente #{cliente2.usuario} \n"
  print "Cuentas asociadas \n"
  cliente2.cuentas.each do |cuentaCreada|
    print "banco: #{cuentaCreada.banco} N° cuenta: #{cuentaCreada.cuenta} saldo $ #{cuentaCreada.saldo}\n"
  end


  puts ""
  #transferir 
  print "saldo cuenta N° #{cuenta1.cuenta} $ #{cuenta1.saldo}   saldo cuenta N° #{cuenta2.cuenta} $ #{cuenta2.saldo} \n" 
  print "#{cuenta1.transferir(cuenta2,2000)}\n"
  print "saldo cuenta N° #{cuenta1.cuenta} $ #{cuenta1.saldo}   saldo cuenta N° #{cuenta2.cuenta} $ #{cuenta2.saldo}\n" 
  puts ""

  #agregar cuenta a cliente
  puts "Agregar Cuenta nueva a Cliente"
  print "cuentas cliente #{cliente1.usuario} - #{cliente1.cuentas}"
  cliente1.agregar_cuenta(cuenta4)
  print "cuentas actualizadas cliente #{cliente1.usuario} - #{cliente1.cuentas}"
  puts ""
  #sumar saldos de cuentas 
  print "Total saldos de cuenta = #{cliente1.sumarSaldos}"

end

#main()
