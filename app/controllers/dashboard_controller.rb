class DashboardController < ApplicationController
	before_action :authenticate_user!
	
	def index
		unless user_signed_in?
  			redirect_to 'users/sign_up' 
 		 end
		@users=User.all
	end
end
