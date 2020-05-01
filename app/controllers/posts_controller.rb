class PostsController < ApplicationController

  def index
    @posts = Post.all
    @user = current_user
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
                                  :sightseeing_rate, :language, :content, :climate)
                                  .merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
