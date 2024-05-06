class BlogPostsController < ApplicationController
  before_action :set_blog_post, only: [:show,]

  #GET /blog_Posts
def index
  @blog_posts = BlogPost.all
  render json: @blog_posts
end

# GET /blog_posts/:id
def show
  blog_post = BlogPost.find_by(id: params[:id])

  if blog_post
    render json: blog_post
  else
    render json: { error: "Blog not found" }, status: :not_found
  end
end


private

def set_blog_post
  @blog_post = BlogPost.find(params[:id])
end

def blog_post_params
  params.permit(:image_url, :title, :body, :published_at)
end

end
