class QuizzesController < ApplicationController
  before_action :set_quiz, only: %i[ show edit update destroy ]

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

  def create
    # @quiz = Quiz.new(quiz_params)
    #
    # respond_to do |format|
    #   if @quiz.save
    #     format.html { redirect_to @quiz, notice: "Quiz was successfully created." }
    #     format.json { render :show, status: :created, location: @quiz }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @quiz.errors, status: :unprocessable_entity }
    #   end
    data = JSON.parse(params[:quiz])
    

    quiz = Quiz.create :title => data["title"], :category => data["category"], :user_id => data["user_id"]
    render json: quiz


  end


  private

  def set_quiz
      @quiz = Quiz.find(params[:id])
    end

  def quiz_params
    params.require(:quiz).permit(:title, :category, :user_id)
  end
end
