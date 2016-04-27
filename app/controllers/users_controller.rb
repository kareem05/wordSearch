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
      if @user.words.nil?
        @user.words = ''
      end

      if $words.present?
      
      @user.words= @user.words + ',' + $words
    #  @user.update_attribute(:words, @user.words)
      @user.save
      $tmp = @user.words.split(/,/) 	
      $words = ''
      $tmp2 = ''
      $tmp = $tmp.uniq
      $score = $tmp.count * 10
      end
    end

end
