require 'spec_helper'

module Presenters
  module Response
    describe Builder do
      
      let :params do
        {key1: :val1}
      end

      subject { Builder.new(params)}

      describe "initialization" do
        its(:params) {should eq params}
      end

      it {should respond_to(:build_response)}

    end
  end
end
