module Presenters
  module Response

    class Builder
      attr_reader :params
     
      def initialize(params)
        @params = params
      end
      
      def build_response
        params.inject({}) do |h, (presenter_name, filters)|
          presenter_klass = ::Presenters::Instantiator.instantiate(presenter_name, filters)
          h[presenter_name] = presenter_klass.get_data
          h
        end
      end

    end

  end
end
