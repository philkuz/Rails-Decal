class PokemonController < ApplicationController
    def capture
        pokemon = Pokemon.find(params[:id])
        pokemon.trainer_id = current_trainer().id
        pokemon.save
        redirect_to 'home#index'
    end
    def new
        @pokemon = Pokemon.new


    end
    def create
        trainer_id = current_trainer().id
        @pokemon = Pokemon.new(pokemon_params)
        @pokemon.health = 100
        @pokemon.level =  1
        @pokemon.trainer_id = trainer_id
        if @pokemon.save
            redirect_to trainer_path(id: current_trainer().id)
        else
            flash[:error] = @pokemon.errors.full_messages.to_sentence
            redirect_to new_pokemon_path
        end
    end
    def update
        @pokemon = Pokemon.find(params[:id])
        if @pokemon.update_attributes(params[:pokemon])

        else
            # if update is unsuccessful
        end
        redirect_to trainer_path(id: current_trainer().id)
    end
    private
    def pokemon_params
        params.require(:pokemon).permit(:name)
    end
end
