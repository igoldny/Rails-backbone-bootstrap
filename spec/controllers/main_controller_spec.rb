require 'spec_helper'

describe MainController do
  describe "GET /pipe" do
    
    describe "JSON request" do
      it "should be success" do
        get :pipe, :format => :json
        response.should be_success
      end
    end
  end
end
