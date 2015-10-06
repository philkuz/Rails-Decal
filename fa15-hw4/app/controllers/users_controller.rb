class UsersController < ApplicationController
  # The controller for users.  Makes an implicit call to render "views/users/method_name.html.erb" at the end of every method.

  def index
    @users = User.all # Get's all the Users in our database and assigns it the the instance variable @user.
  end

  def new
    @user = User.new #Creates an empty user object.
  end

  def create
    @user = User.create(user_params)
    if @user.save #If saving the user was successful
      redirect_to @user #Go to the show view of the user
    else
      render "new" #Go to the new view for the user
    end
  end

  def show
    @user = User.find(params[:id]) # Query for the user with the id that is in params
  end

  private

  def user_params
    params.require(:user).permit(:name, :email) #Returns a hash that was the value of "name" and "email" from the value of "user" in params.
  end
end
