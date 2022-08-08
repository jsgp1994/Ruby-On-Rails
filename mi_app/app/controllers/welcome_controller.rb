class WelcomeController < ApplicationController
    def hello
        @pet = Pet.first
        @name_pet = 'Hola mi nombre es : ' + @pet.name + ' y soy de raza: ' + @pet.breed
    end
end
