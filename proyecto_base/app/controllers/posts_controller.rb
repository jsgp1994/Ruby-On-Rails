class PostsController < ApplicationController

    # GET /posts
    def index
        @posts = Post.where(published: true)
        render json: @posts, status: :ok
    end

    # GET /posts/{id}
    def show
        @posts = Post.find(params[:id])
        render json: @posts, status: :ok
    end

    #POST /posts
    def create
        @post = Post.create!(create_params)
        render json: @post, status: :created
    end

    #PUT /posts/{id}
    def update
    end

    private

    def create_params
        params.require(:posts).permit(:title, :content, :published, :user_id)
    end

    def update_params
        params.require(:posts).permit(:title, :content, :published)
    end

end
