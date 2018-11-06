class UsersController < ApplicationController

  # skip_before_action runs before any of the other methods are called. Authentication always happens here.
  skip_before_action :verify_authenticity_token, only: :create
  def index
    # Placing "print" here will print to the terminal when this method is called - not to the view.
    p 'I just hit the index method'
    @user = User.first
    @foods = FoodChoice.all.pluck(:name)
  end

  def create
    p  "MY PARAMS, IN ORDER OF EXCELLENCE" + user_params.to_s
    user = User.create(name: user_params[:name],
                       fashion_choice: FashionChoice.find_by(name: user_params[:fashion_choice]),
                       food_choice: FoodChoice.find_by(name: user_params[:food_choice]))
    display = user.errors.messages.presence ? user.errors : user
    render json: display
  end

  def delete
  end

  def edit
  end

  private
  # Strong parameters
  # Checks if incoming requests' params meet your expectations.
  # The example below makes sure you have "user" in the top level of the json and returns everything in the level below it. Then, it lists the attributes that are permitted.
  def user_params
    params.require(:user).permit(:name, :fashion_choice, :food_choice)
  end
end
