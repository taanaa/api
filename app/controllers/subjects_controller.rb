class SubjectsController < ApplicationController

    # GET /teachers or /teachers.json
      def index
        if params[:search] == nil || ''
         @subject = Subject.all
        elsif params[:search] == ''
         @subject = Subject.all
        else
       #部分検索
       @subject = Subject.where("title LIKE ? ",'%' + params[:search] + '%')
        end
       end


      private
        # Use callbacks to share common setup or constraints between actions.
        def set_subject
          @subject = Subject.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def subject_params
          params.require(:subject).permit(:title)
        end
    end
