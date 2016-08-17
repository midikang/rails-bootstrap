class VisitorsController < ApplicationController

  def index
    @categories = Category.order(:name)
    @posts = Post.order(visit_count: :desc).limit(10)
  end
end
