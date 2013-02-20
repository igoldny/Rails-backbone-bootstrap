class MainController < ApplicationController
  def show
  end

  def pipe
    respond_to do |format|
      format.json { render :json => {model: ''} }
    end
  end
end
