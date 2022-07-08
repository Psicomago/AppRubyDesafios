class Person
  attr_reader :first, :last
  def initialize(first, last, age)
    raise ArgumentError, 'El atributo first debe ser de la clase string' if first.class != String
    raise ArgumentError, 'El atributo last debe ser de la clase string' if last.class != String
    raise ArgumentError, 'El atributo age debe ser de la clase Integer' if age.class != Integer
    raise RangeError, 'el atributo edad no debe ser menor a 0' if age < 0
    @first_name = first
    @last_name = last
    @age = age
  end
  def birthday
    @age += 1
  end
end
class Student < Person
  def talk
    "Aquí es la clase de programación con Ruby?"
  end
  def introduce
    "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
  end
end 

class Teacher < Person
  def talk
    "Bienvenidos a la clase de programación con Ruby!"
  end
  def introduce
    "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
  end
end

class Parent < Person
  def talk
    "Aquí es la reunión de apoderados?"
  end
  def introduce
    "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
  end
end