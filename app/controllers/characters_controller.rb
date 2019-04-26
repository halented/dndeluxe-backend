class CharactersController < ApplicationController

    def create 
        #newCharacter
    end
    def index
        @characters = Character.all
    end
    
end
