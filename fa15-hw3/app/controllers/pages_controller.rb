class PagesController < ApplicationController
    def index
        @todos = Todo.all
        @cats = Cat.all
        @users = User.all
    end
end
