require 'spec_helper'

module Presenters
  describe Base do

    let :filters do
      {key1: :val1, key2: :val2}
    end

    subject { Base.new(filters) }

    its(:filters) { should eq filters }

    it { should respond_to :get_data }

    describe :get_data do
      it "should raise error" do
        expect {subject.get_data}.to raise_error /Method not implemented/
      end
    end

  end
end
