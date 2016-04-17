class LessonsController < ApplicationController

    before_action :set_lesson, only: [:show, :edit, :update, :destroy]
  def index
  @lessons = Lesson.all
  @lesson = Lesson.new

  end

 def show


  end


def new
     @Lesson = Lesson.new
end



def create
    @lesson = Lesson.new(lesson_params)
 
    respond_to do |format|
      if @lesson.save
        format.html { redirect_to @lesson, notice: 'Lesson was successfully created.' }
        format.json { render :show, status: :created, location: @lesson}
        format.js
      else
        format.html { render :new }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end


  
  def update
    respond_to do |format|
      if @card.update(lesson_params)
        format.html { redirect_to @card, notice: 'Lesson was successfully updated.' }
        format.json { render :show, status: :ok, location: @card }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
        format.js   
      end
    end
  end

  def destroy
    @lesson.destroy
    respond_to do |format|
      format.js   
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson
      @lesson = Lesson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_params
      params.require(:lesson).permit(:title)
    end

    helper_method :check
end
