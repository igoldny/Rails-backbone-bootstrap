module Presenters
  class Model2 < Base
    def get_data
      { title: "title 2 from server", text:  "text 2 from server" }
    end
  end
end
