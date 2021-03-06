class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
  end

  def new
    @questions = Question.new
  end

  def edit
  end

  def create

    #what I had before, when each question was its own form
    # image = Cloudinary::Uploader.upload(params[:image])
    # question = Question.create :image => image["url"], :question => params[:question], :answer_options => params[:answer_options]
    # render json: question
    quizData = JSON.parse(params[:quiz])
    quiz = Quiz.create :title => quizData["title"], :category => quizData["category"], :user_id => quizData["user_id"]

    images = []
    # require 'pry'
    # binding.pry
    params[:image].each do |i|
      image = Cloudinary::Uploader.upload(i)
      images << image
    end

    quesData = JSON.parse(params[:questions])
    # require 'pry'
    # binding.pry
    quesData.each_with_index do |q, index|
      # image = Cloudinary::Uploader.upload(q["image"])
      question = Question.create :question => q["question"], :answer_options => q["answer_options"]

      if images[index].present?
        question.update :image => images[index]["url"]
      end
      # question = Question.create :question => q["question"], :answer_options => q["answer_options"]
      quiz.questions << question
      render json: question
    end



    # @question = Question.new(question_params)
    #
    # respond_to do |format|
    #   if @question.save
    #     format.html { redirect_to @question, notice: "Question was successfully created." }
    #     format.json { render :show, status: :created, location: @question }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @question.errors, status: :unprocessable_entity }
    #   end
  end

  private

  def set_question
      @question = Question.find(params[:id])
    end

  def question_params
    params.require(:question).permit(:question, :answer_options, :image)
  end


end
