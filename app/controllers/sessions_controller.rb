class SessionsController < ApplicationController

	def new
		#nada here
	end

	def create
		session[:name] = params[:name]
		if session[:name] == nil || session[:name] == ''
			redirect_to login_path
		elsif session[:name]
			redirect_to root_path
		end
	end

	def destroy
		session.delete(session[:name])
		session[:name] = nil
		redirect_to login_path
	end

end