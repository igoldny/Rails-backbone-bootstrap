module Presenters
  class Base

    attr_reader :filters

    def initialize(filters)
      @filters = filters
    end

    def get_data
      raise "Method not implemented"
    end

  end
end
