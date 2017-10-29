class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(allowed_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: 'Thank you for signing up!'
    else
      render :new
    end
  end

  private

  def allowed_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end


# class UsersController < ApplicationController
#   # before_action :set_user, only: [:create, :show, :edit, :update, :destroy]
#
#   def new
#     @user = User.new
#   end
#
#   def create
#     @user = User.new(params[:user])
#     if @user.save
#       redirect_to root_url, :notice => "Signed up!"
#     else
#       render "new"
#     end
#   end
#
#   # before_action :set_user, only: [:show, :edit, :update, :destroy]
#   #
#   # # GET /users
#   # # GET /users.json
#   # def index
#   #   @users = User.all
#   # end
#   #
#   # # GET /users/1
#   # # GET /users/1.json
#   # def show
#   # end
#   #
#   # # GET /users/new
#   # def new
#   #   @user = User.new
#   # end
#   #
#   # # GET /users/1/edit
#   # def edit
#   # end
#   #
#   # # POST /users
#   # # POST /users.json
#   # def create
#   #   binding.pry
#   #   # @user = User.new(user_params)
#   #   # @user = User.new(params[:user])
#   #   # @user.password = params[:password]
#   #   # @user.save!
#   #
#   #   respond_to do |format|
#   #     if @user.save
#   #       format.html { redirect_to @user, notice: 'User was successfully created.' }
#   #       format.json { render :show, status: :created, location: @user }
#   #     else
#   #       format.html { render :new }
#   #       format.json { render json: @user.errors, status: :unprocessable_entity }
#   #     end
#   #   end
#   # end
#   #
#   # # PATCH/PUT /users/1
#   # # PATCH/PUT /users/1.json
#   # def update
#   #   respond_to do |format|
#   #     if @user.update(user_params)
#   #       format.html { redirect_to @user, notice: 'User was successfully updated.' }
#   #       format.json { render :show, status: :ok, location: @user }
#   #     else
#   #       format.html { render :edit }
#   #       format.json { render json: @user.errors, status: :unprocessable_entity }
#   #     end
#   #   end
#   # end
#   #
#   # # DELETE /users/1
#   # # DELETE /users/1.json
#   # def destroy
#   #   @user.destroy
#   #   respond_to do |format|
#   #     format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
#   #     format.json { head :no_content }
#   #   end
#   # end
#
#   private
#     # Use callbacks to share common setup or constraints between actions.
#     # def set_user
#     #   @user = User.find(params[:id])
#     # end
#
#     # Never trust parameters from the scary internet, only allow the white list through.
#     def user_params
#       params.require(:user).permit(:username, :email, :pw_hash)
#     end
# end
