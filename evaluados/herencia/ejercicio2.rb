# Crear la clase Animal con un atributo nombre. Agregar un método getter para el
# atributo nombre. (1 Punto)
# ● Crear las clases Ave, Mamífero e Insecto. Ambas heredan de Animal. (1 Punto)
# ● Crear las clases Pingüino, Paloma y Pato. Las tres heredan de Ave. (1 Punto)
# ● Crear las clases Perro, Gato y Vaca. Las tres heredan de Mamífero. (1 Punto)
# ● Crear las clases Mosca, Mariposa y Abeja. Las tres heredan de Insecto. (1 Punto)
# ● Incluye los módulos en cada subclase utilizando la instrucción include con el objetivo
# de definir las habilidades y tipo de alimentación de cada animal. (2 Puntos)

require_relative 'modulos'

class Animal
    attr_reader :nombre
    def initialize(nombre)
        raise ArgumentError, 'El atributo nombre debe ser de la clase string' if nombre.class != String
        @nombre = nombre
    end
    include Habilidades::Caminante
end

class Ave < Animal

end

class Mamifero < Animal

end

class Insecto < Animal
    
end

class Pinguino < Ave
    include Alimentacion::Carnivoro
    include Habilidades::Nadador
    def volar
    'No soy Juan Salvador Gaviota, eh'
    end
    def aterrizar
    'Ni siquiera he levantado el vuelo'
    end
end

class Paloma < Ave
    include Habilidades::Volador
    include Alimentacion::Herbivoro
    def nadar
    'glup glup, me ahogo'
    end
    def sumergir
    '¡Rrrrrrr, rrrrrr, glup glup Aggg!'
    end
end

class Pato < Ave
    include Habilidades::Volador
    include Habilidades::Nadador
    include Alimentacion::Herbivoro
end


class Perro < Mamifero
    include Alimentacion::Carnivoro
    include Habilidades::Nadador
    def volar
        'guarr,grrr grrrr no puedo volar'
    end
    def aterrizar
        'Ni siquiera he levantado el vuelo'
    end

end
class Gato < Mamifero
    include Alimentacion::Carnivoro
    def nadar
        'miauuu, puedo nadar pero, ni los sueñes'
    end
    def sumergir
        'no mames guey, soy un gato'
    end
    def volar
        'no puedo volar, pero puedo trepar muy alto'
    end
    def aterrizar
        'contorsión y derechito aterrizo. al saltar eso si'
    end

end
class Vaca < Mamifero
    include Alimentacion::Herbivoro
    include Habilidades::Nadador
    def volar
        'no puedo volar, pero puedo dar leche'
    end
    def aterrizar
        'Ni siquiera he levantado el vuelo'
    end

end

class Mosca < Insecto
    include Habilidades::Volador
    def comer
        'puedo comer heces, basura y animales en descomposición'
    end
    def nadar
        'si fuera una mosca alcalina podría nadar'
    end
    def sumergir
        'como soy una mosca alcalina peluda, me puedo sumergir '
    end
end
class Mariposa < Insecto
    include Habilidades::Volador
    def comer
        'como oruga puedo comer vegetales, como mariposa estoy a puro nectar'
    end
    def nadar
        'la mayoría no podemos nadar'
    end
    def sumergir
        'solo algunas mariposas nocturnas pueden sumergirse'
    end

end
class Abeja < Insecto
    include Habilidades::Volador
    def comer
        'traigame una porcion de polen acompañado de un nectar, la jalea real es para mi reina'
    end
    def nadar
        'puedo nadar maximo 10 minutos y para ponerme a salvo'
    end
    def sumergir
        'glup glup agggggg'
    end
end