class DrinksController < ApplicationController
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
    @drink = Drink.new(params[:drink])
    if @drink.save
      redirect_to @drink, notice: "追加しました。"
    else
      render "new"
    end
  end

  def update
    @drink = Drink.find(params[:id])
    @drink.assign_attributes(params[:drink])
    if @drink.save
      redirect_to @drink, notice: "情報を更新しました。"
    else
      render "edit"
    end
  end

  def destroy
    @drink = Drink.find(params[:id])
    @drink.destroy
    redirect_to :drinks, notice: "情報を削除しました。"
  end
end
