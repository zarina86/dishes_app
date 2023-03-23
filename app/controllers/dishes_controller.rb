class DishesController < ApplicationController
  before_action :set_dish, only: %i[ show edit update destroy]

  def index
    @search = Dish.ransack(params[:q])
    @dishes = @search.result(distinct: true)#.includes(:dish_ingredients, :ingredients)
  end

  def show
  end

  def new
    @dish = Dish.new
  end

  def edit
  end

  def create
    @dish = Dish.new(dish_params)

    
      if @dish.save
         redirect_to dish_url(@dish), notice: "Dish was successfully created." 
        
      else
        render :new, status: :unprocessable_entity 
        
      end
    
  end

  def update
    respond_to do |format|
      if @dish.update(dish_params)
        format.html { redirect_to dish_url(@dish), notice: "Dish was successfully updated." }
        format.json { render :show, status: :ok, location: @dish }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dish.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @dish.destroy
    
    respond_to do |format|
      format.html { redirect_to dishes_url, notice: "Dish was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_dish
      @dish = Dish.find(params[:id])
    end

    def dish_params
      params.require(:dish).permit(:name, ingredient_ids: [])
    end
end
