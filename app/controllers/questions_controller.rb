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

    quiz = Quiz.create :title => params[:quiz][:title], :category => params[:quiz][:category], :user_id => params[:quiz][:user_id]

    params[:questions].each do |q|
      image = Cloudinary::Uploader.upload(q[:image])
      question = Question.create :question => q[:question], :image => image["url"], :answer_options => q[:answer_options]
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
