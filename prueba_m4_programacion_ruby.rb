=begin
class Person
    def initialize(first, last, age, type)
        @first_name = first
        @last_name = last
        @age = age
        @type = type
    end

    def birthday
        @age = 0
    end

    def talk
        if @type == "Student"
            puts "Aquí es la clase de programación con Ruby?"
        elsif @type == "Teacher"
        puts "Bienvenidos a la clase de programación con Ruby!"
            elsif @type == "Parent"
        puts "Aquí es la reunión de apoderados?"
    end

    def introduce
        if @type == "Student"
            puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
        elsif @type == "Teacher"
            puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
        elsif @type == "Parent"
            puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
end
=end

puts "-----------------------------------------------------------------------------------"

class Person

    # Inicializa / Crea el constructor de la clase Persona con los parámetros enviados
    def initialize(first, last, age, type)
        @first_name = first
        @last_name = last
        @age = age
        @type = type
    end

    # Crea el método Birthday
    def birthday
        @age += 1
        puts "Feliz cumpleaños número #{@age}"
    end

    # Crea método introduce
    def introduce
        puts "Hola mi nombre es #{@first_name} #{@last_name} y soy #{@type}"   #de #{@first_name}"
    end
end

# Crea el método talk para cada herencia

class Teacher < Person
    def talk
        puts "Bienvenidos a la clase de programación con Ruby!"
    end
end

class Student < Person
    def talk
        puts "Aquí es la clase de programación con Ruby?"
    end
end

class Parent < Person
    def talk
        puts "Aquí es la reunión de apoderados?"
    end
end

# Profesor
teacher = Teacher.new("Cristián", "López", 43, "Profesor")
teacher.talk
teacher.introduce
teacher.birthday

# Estudiante
student = Student.new("Demian", "Rojas", 27, "Estudiante") 
student.talk
student.introduce
student.birthday

# Apoderado
parent = Parent.new("Carolina", "Oyarzún", 42, "Apoderado")
parent.talk
parent.introduce
parent.birthday

puts "-----------------------------------------------------------------------------------"

=begin
croja@ZenBookDro MINGW64 /c/INFORCAP/RUBY/20230606 (main)
$ ruby ejercicio_prueba.rb
-----------------------------------------------------------------------------------
Bienvenidos a la clase de programación con Ruby!
Hola mi nombre es Cristian Lopez y soy Profesor de Cristian
Felices 46 años!
Aquí es la clase de programación con Ruby?
Hola mi nombre es Demian Rojas y soy Estudiante de Demian
Felices 28 años!
Aquí es la reunión de apoderados?
Hola mi nombre es Carolina Oyarzun y soy Apoderado de Carolina
Feliz cumple 44

croja@ZenBookDro MINGW64 /c/INFORCAP/RUBY/20230606 (main)
$ ruby ejercicio_prueba.rb
-----------------------------------------------------------------------------------
Bienvenidos a la clase de programación con Ruby!
Hola mi nombre es Cristian Lopez y soy Profesor de Cristian
Felices 46 años!
Aquí es la clase de programación con Ruby?
Hola mi nombre es Demian Rojas y soy Estudiante de Demian
Felices 28 años!
Aquí es la reunión de apoderados?
Hola mi nombre es Carolina Oyarzun y soy Apoderado de Carolina
Felices 44 años!


croja@ZenBookDro MINGW64 /c/INFORCAP/RUBY/20230606 (main)
$ ruby ejercicio_prueba.rb
-----------------------------------------------------------------------------------
Bienvenidos a la clase de programación con Ruby!
Hola mi nombre es Cristián López y soy Profesor
Feliz cumpleaños número 44
Aquí es la clase de programación con Ruby?
Hola mi nombre es Demian Rojas y soy Estudiante
Feliz cumpleaños número 28
Aquí es la reunión de apoderados?
Hola mi nombre es Carolina Oyarzún y soy Apoderado
Feliz cumpleaños número 43

=end


