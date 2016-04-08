class UsersController < ApplicationController
  
  	def index
  		@users = User.all 
  	
    end

	def show
		if current_user
     		@user = User.find(current_user)
 		else
    	    redirect_to new_user_session_path, notice: 'You are not logged in.'
   		end
		
	end

end
