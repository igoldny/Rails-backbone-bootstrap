class MainController < ApplicationController
  def show
  end
  def pipe
    res = Presenters::Response::Builder.new(params[:request_details]).build_response
    respond_to do |format|
      format.json { render :json => res }
    end
  end
end
