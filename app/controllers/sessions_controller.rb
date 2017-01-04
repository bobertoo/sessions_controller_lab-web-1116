class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to :sessions_new
    else
      session[:name] = params[:name]
      redirect_to :root
    end
  end

  def destroy
    if !session[:name]
      redirect_to :sessions_new
    else
      session.destroy
      redirect_to :sessions_new
    end
  end
end
