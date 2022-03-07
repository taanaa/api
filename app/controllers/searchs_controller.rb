class SearchsController < ApplicationController
  class SearchsController < ApplicationController
    def search
      @model = params["model"]
      @content = params["content"]
      @method = params["method"]
      @records = search_for(@model, @content, @method)
    end

    private
    def search_for(model, content, method)
      if model == 'techaer'
        User.where('name LIKE ?', '%'+content+'%')
        end
      if model == 'subject'
        Subject.where('title LIKE ?', '%'+content+'%')
      end
      if model == 'lectuers'
        Lectuers.where('title LIKE ?', '%'+content+'%')
      end
    end
  end
end
