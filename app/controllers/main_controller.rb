class MainController < ApplicationController
  def show
  end

  def pipe
    respond_to do |format|
      format.json {
        render :json => {
          model1: { title: 'title 1 from server',
                    text: 'text 1 from server' },
          model2: { title: 'title 2 from server',
                    text: 'text 2 from server' }
        }
      }
    end
  end
end
