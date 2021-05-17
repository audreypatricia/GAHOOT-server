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
    image = Cloudinary: :Uploader.upload(params[:image])
    question = Question.create :image => image["url"], :question => params[:question], :answer_options => params[:answer_options]
    render json: question
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
