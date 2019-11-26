class BlogsController < ApplicationController
  
   before_action :move_to_index, except: [:index,:top,:show]
  
  def top
  end
  
  def index
  @curry = Blog.all  
  end
  
  def new
  end
  
  def create
    Blog.create(image: secret7[:image],name: secret7[:nickname],date: secret7[:date],title: secret7[:title],contents: secret7[:contents],text: secret7[:text], user_id: current_user.id)
     
  end 
  
  def show
    @blog= Blog.find(params[:id])
    @comments = @blog.comments.includes(:user)

  end
     
  def destroy
    tweet = Blog.find(params[:id])
    if tweet.user_id == current_user.id
      tweet.destroy
    end
  end
  def edit
    @blog = Blog.find(params[:id])
  end
  def update
    tweet = Blog.find(params[:id])
    if tweet.user_id == current_user.id
      tweet.update(secret7)
    end
  end
  
  private
  def secret7
    params.permit(:image, :text, :nickname, :date, :title, :contents)
  end
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
