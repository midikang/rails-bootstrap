class VisitorsController < ApplicationController

  def index
    @categories = Category.order(:name)
    @posts = Post.order(updated_at: :desc).limit(3)
  end
end
