# 1- Crear las clases Usuario y CuentaBancaria. (1 Punto) --hecho--
# 2- Crear el constructor de la clase CuentaBancaria que reciba el nombre del banco, el
#     número de cuenta y el saldo (el saldo por defecto será cero). (1 Punto) --hecho--
# 3- Crear el método transferir en la clase Cuenta que reciba un monto y otra cuenta. Este
# método restará del saldo actual el monto y aumentará el saldo de la otra cuenta en el mismo monto. (1 Punto --Hecho--     
# 4- Probar creando dos cuentas cada una con un saldo de 5000 y transferir el total de una cuenta a la otra. --hecho--
# 5. Crear el constructor de Usuario que reciba el nombre del usuario y un arreglo con al menos 1 cuenta bancaria. (1 Punto) ---hecho---
# 6. Crear el método saldo total que devuelva la suma de todos los saldos del usuario. (1Punto)
require_relative 'cuentaBancaria.rb'
require_relative 'usuario.rb'
require_relative 'tester_cuentas.rb'
require 'byebug'

