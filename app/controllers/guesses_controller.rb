class GuessesController < ApplicationController
  def index
    @guesses = Guess.all
  end

  def show
  end

end
