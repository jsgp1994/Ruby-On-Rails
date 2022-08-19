class Person < Struct.new(:name, :age)
    #Metodo privado de la clase
    def self.suggested_names
        ["pepito", "jose", "maria"] 
    end
  
end

p1 = Person.new("Juan", 28)
puts p1.name + "\n" + p1.age.to_s