require 'spec_helper'

module Presenters
  class Test
    def initialize(filter)
    end
  end

  describe Instantiator do

    subject { Instantiator }

    describe :instantiate do

      let :filters do
        {key1: :val1}
      end

      it {should respond_to(:instantiate)}

      it "should instantiate class" do
        subject.instantiate("Test", filters).should be_an_instance_of Test
      end

      it "should send filters to instantiated class" do
        Test.should_receive(:new).with(filters)
        subject.instantiate("Test", filters)
      end
    end


  end
end
