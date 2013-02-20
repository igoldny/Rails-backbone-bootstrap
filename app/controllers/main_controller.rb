class MainController < ApplicationController
  def show
  end

  def pipe
    respond_to do |format|
      format.json { render :json => {model1: {}, model2: {}} }
    end
  end
end
