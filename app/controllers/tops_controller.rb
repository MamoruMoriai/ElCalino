class TopsController < ApplicationController
  def index
    @foods = Food.order("id")
    @drinks = Drink.order("id")
    @blogs = Blog.order("id": "DESC")
      .paginate(page: params[:page], per_page: 15)
    @categories = Category.order("id")
    @genres = Genre.order("id")
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  def not_found
    raise ActionController::RoutingError, "No route matches #{request.path.inspect}"
  end

  def bad_request
    raise ActionController::ParameterMissing, "" 
  end

  def internal_server_error
    raise Exception
  end
end
