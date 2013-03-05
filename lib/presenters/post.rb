module Presenters
  class Post < Base
    def get_data
      { title: "post title 1 from server", text:  "post text 1 from server" }
    end
  end
end
