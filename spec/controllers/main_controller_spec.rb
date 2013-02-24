require 'spec_helper'

describe MainController do

  describe "GET /pipe" do
    
    describe "JSON request" do
      it "should be success" do
        Presenters::Response::Builder.stub_chain(:new, :build_response)
        get :pipe, format: :json
        response.should be_success
      end

      it "should send :request_details to response builder" do
        request_details = { "key1" => "val1" }
        stub_builder = stub(:build_response => "{}")
        Presenters::Response::Builder.should_receive(:new).with(request_details).and_return(stub_builder)
        get :pipe, request_details: request_details
      end
    end
  end
end
