class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  # skip_before_action :require_login, only: [:index, :show]

  # before_action :logged_in?

  # GET /restaurants
  # GET /restaurants.json
  def index
    @restaurants = Restaurant.all

    #  respond_to do |format|
    #    format.html { redirect_to restaurants_url, notice: 'View Restaurants.' }
    #    format.js { redirect_to restaurants_url, notice: 'View Restaurants.' }
    #  end

    # respond_to do |format|
    #   if !@restaurants.nil?
    #     format.html { render restaurants_url, notice: 'View Restaurants.' }
    #     format.json { head :no_content }
    #   else
    #     format.html { render new_restaurant_path, notice: 'No Restaurants.' }
    #     format.json { head :no_content }
    #   end
    # end


  end

  # GET /restaurants/1
  # GET /restaurants/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.js # show.js.erb
    end
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # GET /restaurants/1/edit
  def edit
  end

  # POST /restaurants
  # POST /restaurants.json
  def create
    # @restaurant = Restaurant.new(restaurant_params)
    # @restaurant.user = User.find(session[:user_id])
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.user = @current_user


    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to user_url(@current_user), notice: 'Thanks for adding your restaurant listing.' }
        format.json { render 'users/user_partial', user: @current_user }

        # format.html { redirect_to @restaurant, notice: 'Restaurant was successfully created.' }
        # format.json { render :show, status: :created, location: @restaurant }
      else
        format.html { render :new }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurants/1
  # PATCH/PUT /restaurants/1.json
  def update
    # binding.pry
    respond_to do |format|
      if @restaurant.update(restaurant_params)
        format.html { redirect_to user_url(@current_user), notice: 'Restaurant was successfully updated.' }
        format.json { render 'users/user_partial', user: @current_user }

        # format.html { redirect_to @restaurant, notice: 'Restaurant was successfully updated.' }
        # format.json { render :show, status: :ok, location: @restaurant }
      else
        format.html { render :edit }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurants/1
  # DELETE /restaurants/1.json
  def destroy
    binding.pry
    @restaurant.destroy
    respond_to do |format|
      format.html { redirect_to user_url(@current_user), notice: 'Restaurant was successfully destroyed.' }
      format.json { render 'users/user_partial', user: @current_user }

      # format.html { redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.' }
      # format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_params
      params.require(:restaurant).permit(:name, :cuisine, :address, :city, :state, :zip, :user_id)
    end
end
