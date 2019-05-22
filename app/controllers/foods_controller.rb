class FoodsController < ApplicationController
  before_action :login_required

  def index
    @foods = Food.order("id")
    @drinks = Drink.order("id")
    @categories = Category.order("id")
    @genres = Genre.order("id")
  end

  def show
    @food = Food.find(params[:id])
  end

  def new
    @food = Food.new()
  end

  def edit
    @food = Food.find(params[:id])
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to @food, notice: "追加しました。"
    else
      render "new"
    end
  end

  def update
    @food = Food.find(params[:id])
    @food.assign_attributes(food_params)
    if @food.save
      redirect_to @food, notice: "情報を更新しました。"
    else
      render "edit"
    end
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to :root, notice: "情報を削除しました。"
  end

  private
  def food_params
    params.require(:food).permit(:category_id, :name, :price, :image, :genre_id)
  end
end
