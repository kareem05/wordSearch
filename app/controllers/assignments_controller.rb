class AssignmentsController < ApplicationController


				def index
					@users = User.all
					@user = User.find(current_user)
					
				end

			  def create
			  		@lesson = Lesson.find($lesson_id)	
			  		@user = User.find(params[:user_id])
			  	  @assignment = @user.assignments.build(:lesson_id => $lesson_id)
			          if @assignment.save
			            flash[:notice] = "Added lesson to student."
			            redirect_to :user_root
			          else
			            flash[:error] = "Unable to add lesson."
			            redirect_to :user_root
			          end
			  end

			  def destroy
			  	
			  
			  	 @assignment = current_user.assignments.find(params[:id])
			          @assignment.destroy
			          flash[:notice] = "Removed lesson."
			          redirect_to :back
			  end
end
   