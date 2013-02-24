module Presenters
  module Response

    class Builder
      attr_reader :params
     
      def initialize(params)
        @params = params
      end
      
      def build_response
      end

    end

  end
end
