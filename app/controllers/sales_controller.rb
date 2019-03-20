class SalesController < ApplicationController
  before_action :login_required

  def index
    # 伝票別売上
    @today = Food.sale_price
    gon.date = []
    gon.table = []
    gon.sale_price = []
    @today.each do |today|
      gon.date << today.date
      gon.table << today.name
      gon.sale_price << today.sum_price
    end

    # 日別売上
    @days = Food.days_price
    gon.days_price = []
    @days.each do |days|
      gon.days_price << days.sum_price
    end

    # テーブル別売上
    @table = Food.table_price
    gon.table_price = []
    @table.each do |table|
      gon.table_price << table.sum_price
    end

  end

  def show
    @sale = Sale.find(params[:id])
  end

  def new
    @sale = Sale.new()
  end

  def edit
    @sale = Sale.find(params[:id])
  end

  def create
    @sale = Sale.new(params[:sale])
    if @sale.save
      redirect_to @sale, notice: "追加しました。"
    else
      render "new"
    end
  end

  def update
    @sale = Sale.find(params[:id])
    @sale.assign_attributes(params[:sale])
    if @sale.save
      redirect_to @sale, notice: "情報を編集しました。"
    else
      render "edit"
    end
  end

  def destroy
    @sale = Sale.find(params[:id])
    @sale.destroy
    redirect_to :sales, notice: "情報を削除しました。"
  end
end
