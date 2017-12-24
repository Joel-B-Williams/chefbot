class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_username(params[:username])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to '/'
		else
			redirect_to '/login'
			flash[:error] = "None Shall Pass"
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to '/'
	end

end