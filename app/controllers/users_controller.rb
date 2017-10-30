class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]


  def index
    @users = User.all
  end

  def show
  end


  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)

    # if @user.save
    #   session[:user_id] = @user.id
    #   redirect_to root_url, notice: 'Thank you for signing up!'
    # else
    #   render :new
    # end

  respond_to do |format|
    if @user.save
      session[:user_id] = @user.id
      # redirect_to root_url, notice: 'Thank you for signing up!'
      format.html { redirect_to @user, notice: 'Thank you for signing up!' }
      format.json { render :show, status: :created, location: @user }
    else
      # render :new
      format.html { render :new }
      format.json { render json: @user.errors, status: :unprocessable_entity }
    end
  end

  end

  private

  # def allowed_params
  #   params.require(:user).permit(:username, :email, :password, :password_confirmation)
  # end
  def set_user
    @review = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
