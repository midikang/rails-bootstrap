class VisitorsController < ApplicationController

  def index
    @posts = Post.order(visit_count: :desc).limit(10)
  end
end
