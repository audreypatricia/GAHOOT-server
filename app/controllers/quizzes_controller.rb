class QuizzesController < ApplicationController

  def index
    @quizzes = Quiz.all
  end

  def show
  end

  def new
    @quizzes = Quiz.new
  end

  def edit
  end


end
