module RecipesHelper

	def logged_in?
		session[:user_id]
	end

	def current_user
		User.find_by_id(session[:user_id])
	end

	def is_admin?(user)
		User.find_by_id(user.id)
	end
end
