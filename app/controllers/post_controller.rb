class PostController < ApplicationController
  def post
    @title = 'Post title from server'
    @text = 'Post text from server'
  end
end
