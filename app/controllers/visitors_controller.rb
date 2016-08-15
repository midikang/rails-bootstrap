class VisitorsController < ApplicationController

  def index
    @categories = Category.order(:name)
    @posts = Post.order(visit_count: :desc).limit(3)
  end
end
