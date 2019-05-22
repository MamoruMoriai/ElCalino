class DrinksController < ApplicationController
  before_action :login_required
  def index
    @drinks = Drink.order("id")
  end

  def show
    @drink = Drink.find(params[:id])
  end

  def new
    @drink = Drink.new()
  end

  def edit
    @drink = Drink.find(params[:id])
  end

  def create
    @drink = Drink.new(drink_params)
    if @drink.save
      redirect_to @drink, notice: "追加しました。"
    else
      render "new"
    end
  end

  def update
    @drink = Drink.find(params[:id])
    @drink.assign_attributes(drink_params)
    if @drink.save
      redirect_to @drink, notice: "情報を更新しました。"
    else
      render "edit"
    end
  end

  def destroy
    @drink = Drink.find(params[:id])
    @drink.destroy
    redirect_to :root, notice: "情報を削除しました。"
  end

  private
  def drink_params
    params.require(:drink).permit(:category_id, :name, :price, :image, :genre_id)
  end
end
