class QuizzesController < ApplicationController

  def index
    @quizzes = Quiz.all
  end

  def show
  end

  def new
    @quizzes = Quiz.new
  end



  # def create
  #   post = Post.create post_params
  #   @current_user.posts << post
  #   if params[:file].present?
  #     req = Cloudinary::Uploader.upload params[:file]
  #     post.image = req["public_id"]
  #     post.save
  #   end
  #   redirect_to post
  # end



  def edit
  end


end
