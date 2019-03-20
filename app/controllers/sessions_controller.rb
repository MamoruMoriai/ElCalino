class SessionsController < ApplicationController

  def new
  end

  def create
    chief = Chief.find_by(name: params[:session][:name])
    if chief && chief.authenticate(params[:session][:password])
      session[:chief_id] = chief.id
      redirect_to :root
    else
      redirect_to :root
    end
  end

  def destroy
    session.delete(:chief_id)
    redirect_to :root
  end

end
