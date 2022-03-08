class TeachersController < ApplicationController

  # GET /teachers or /teachers.json
  def index
    if params[:search] == nil || ''
     @teacher = Teacher.all
    elsif params[:search] == ''
     @teacher = Teacher.all
    else
   #部分検索
   @teacher = Teacher.where("name LIKE ? ",'%' + params[:search] + '%')
    end
   end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher
      @teacher = Teacher.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def teacher_params
      params.require(:teacher).permit(:name)
    end
end
