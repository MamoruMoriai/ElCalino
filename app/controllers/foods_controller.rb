class FoodsController < ApplicationController
  before_action :login_required

  def index
    @foods = Food.order("id")
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
    @food = Food.new(params[:food])
    if @food.save
      redirect_to @food, notice: "追加しました。"
    else
      render "new"
    end
  end

  def update
    @food = Food.find(params[:id])
    @food.assign_attributes(params[:food])
    if @food.save
      redirect_to @food, notice: "情報を更新しました。"
    else
      render "edit"
    end
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to :foods, notice: "情報を削除しました。"
  end
end
