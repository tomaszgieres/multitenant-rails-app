class BlogsController < ApplicationController
  before_action :set_blog

  def index
    @blogs = Blog.all
  end

  def show

  end

end
