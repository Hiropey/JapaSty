class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
  end

  private
  def post_params
    params.require(:post).permit( :detailed_place, :visit_date, :visit_cost, :visit_length, 
                                  :total_rate, :food_rate, :hotel_rate, :entertainment_rate, 
                                  :sightseeing_rate, :language, :content )
  end

end
