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


end
