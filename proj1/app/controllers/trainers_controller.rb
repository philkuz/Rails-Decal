class TrainersController < ApplicationController
  before_filter :authenticate_trainer!

  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
    @pokemons = @trainer.pokemons
  end
  def damage
      @pokemon  = Pokemon.find(params[:id])
      @pokemon.health -= 10
      @pokemon.save
      redirect_to trainer_path(id: @pokemon.trainer_id)
      if @pokemon.health <= 0
          @pokemon.destroy
      end


  end

end
