class EnrollmentsController < ApplicationController
  
 def create
  @enrollment = current_user.enrollments.build(:student_id => params[:student_id])
  if @enrollment.save
    flash[:notice] = "Added student."
    redirect_to :user_root
  else
    flash[:error] = "Unable to add student."
    redirect_to :user_root
  end
end

def destroy
  @enrollment = current_user.enrollments.find(params[:id])
  @enrollment.destroy
  flash[:notice] = "Removed enrollment."
  redirect_to :back
end
 
end
