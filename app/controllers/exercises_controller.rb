class ExercisesController < ApplicationController
  respond_to :json
  before_action :set_exercise, only: [:show, :edit, :update, :destroy]

  #def index
    #@exercises = Exercise.all
  #end

  def show
    respond_with @exercise
  end

  #def new
    #@exercise = Exercise.new
  #end

  #def edit
  #end

  def create
    @exercise = Exercise.new(exercise_params) do |ex|
      ex.github_id = current_user.uid
    end

    respond_to do |format|
      if @exercise.save
        format.json { render json: @exercise, status: :created }
      else
        format.json { render json: @exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  #def update
    #respond_to do |format|
      #if @exercise.update(exercise_params)
        #format.html { redirect_to @exercise, notice: 'Exercise was successfully updated.' }
        #format.json { head :no_content }
      #else
        #format.html { render action: 'edit' }
        #format.json { render json: @exercise.errors, status: :unprocessable_entity }
      #end
    #end
  #end

  #def destroy
    #@exercise.destroy
    #respond_to do |format|
      #format.html { redirect_to exercises_url }
      #format.json { head :no_content }
    #end
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercise
      @exercise = Exercise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exercise_params
      params.require(:exercise).permit(:name, :kata_details)
    end
end
