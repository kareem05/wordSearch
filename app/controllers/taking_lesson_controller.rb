class TakingLessonController < ApplicationController
 
		 def create
		  @taking_lesson = lesson.taking_lesson.build(:student_id => params[:student_id])
		  if @taking_lesson.save
		    flash[:notice] = "Added lesson to student."
		    redirect_to :user_root
		  else
		    flash[:error] = "Unable to add lesson."
		    redirect_to :user_root
		  end
		end

		def destroy
		  @taking_lesson = lesson.taking_lessons.find(params[:id])
		  @taking_lesson.destroy
		  flash[:notice] = "Removed lesson."
		  redirect_to :back
		end
 
end
