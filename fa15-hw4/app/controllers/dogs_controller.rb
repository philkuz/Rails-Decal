class DogsController < ApplicationController
    def index
        @dogs = Dog.all
    end
    def new
        @dog = Dog.new
    end
    def create
        @dog = Dog.new(dog_params)
        if @dog.save
            redirect_to @dog, alert: "Dog created successfully"
        else
            redirect_to new_dog_path, alert: "Error creating Dog"
        end
        # @dog = Dog.new
        # @dog.name = params[:name]
        # @dog.age = params[:age]
        # @dog.save
    end
    def show
        @dog = Dog.find(params[:id])
        if @dog == nil
            @failed = true
        else
            @failed = false
        end
    end
    private
    def dog_params
        params.require(:dog).permit(:name, :age)
    end
end
