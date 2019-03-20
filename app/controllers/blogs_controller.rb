class BlogsController < ApplicationController
  def index
    @blogs = Blog.order("id": "DESC")
      .paginate(page: params[:page], per_page: 15)
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new(time: Date.today)
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def create
    @blog = Blog.new(params[:blog])
    if @blog.save
      redirect_to @blog, notice: "投稿しました。"
    else
      render "new"
    end
  end

  def update
    @blog = Blog.find(params[:id])
    @blog.assign_attributes(params[:blog])
    if @blog.save
      redirect_to @blog, notice: "投稿を更新しました。"
    else
      render "edit"
    end
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to :blogs, notice: "投稿を削除しました。"
  end
end
