class BlogPostsController < ApplicationController
  # before_action :set_blog_post, only: :create

  def index
    @posts = BlogPost.all
  end

  def show
    @post = BlogPost.find(params[:id])
    @comment = @post.comments.build
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end

  def new
    @post = BlogPost.new
  end
  
  def create
    @post = BlogPost.new(blog_post_params)

    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def blog_post_params
    params.require(:blog_post).permit(:title, :body)
  end
end