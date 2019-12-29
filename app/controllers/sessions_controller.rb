class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    if session[:name] == nil or session[:name] == ''
      redirect_to sessions_new_path
    elsif session[:name]
      redirect_to root_path
    end
  end

  def destroy
    if session[:name]
      session.delete :name
    end
  end

end
