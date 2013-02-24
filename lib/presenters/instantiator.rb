module Presenters
  class Instantiator
    include ActiveSupport::Inflector
    class << self

      def instantiate(presenter_name, filters)
        resolved_name = resolve_name(presenter_name)
        presenter_class = resolved_name.constantize
        presenter_class.new(filters)
      end

      private

        def resolve_name(name)
          "::Presenters::#{name.camelize}"
        end
    end
  end
end
