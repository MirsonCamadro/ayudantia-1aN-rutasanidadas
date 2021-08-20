class HomeController < ApplicationController
  def index
    @comments = Comment.all.page params[:page]
  end
end
