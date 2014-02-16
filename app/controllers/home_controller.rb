class HomeController < ApplicationController
  before_action :set_blog

  def index
    render 'blogs/show'
  end
end
