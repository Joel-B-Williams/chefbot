class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_username(params[:sessions][:username])
		if user && user.authenticate(params[:sessions][:password])
			p"*"*50
			p"AUTHENTICAteD"
			session[:user_id] = user.id
			redirect_to '/'
		else
			p"*"*50
			p "hard pass thanks"
			p params
			redirect_to '/login'
			flash[:error] = "None Shall Pass"
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to '/'
	end

end