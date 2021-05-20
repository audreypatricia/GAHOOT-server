class UsersController < ApplicationController

  def index
    @users = User.all
    if @users
      render json: {
        users: @users
      }
    else
      render json: {
        status: 500,
        errors: ['no users found']
      }
    end
  end

  def check

    users = User.all
    groups = users.group_by{ |user| user.pin }
    players = groups.keys.map {|k| groups[k].pluck(:pin, :id, :username, :score)}
    games = Game.all

    games.each do |game|
      players.each do |player|
        if game.pin == player[0][0]
          game.players = player
          game.save
        end
      end
    end

    render :json => { :status => "okay!" }
  end

  def getQuiz
    user = User.find(params[:id]) # get current user
    pin = user.pin

    games = Game.all
    quiz_id = ''
    game_id = ''

    games.each do |game|
      if game.pin == pin
        quiz_id = game.quiz_id
        game_id = game.id
        break
      end
    end

    render :json => { :quiz_id => quiz_id, :game_id => game_id }

  end

  def show
    @user = User.find(params[:id])
   if @user
      render json: {
        user: @user
      }
    else
      render json: {
        status: 500,
        errors: ['user not found']
      }
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login!
      render json: {
        status: :created,
        user: @user
      }
    else
      render json: {
        status: 500,
        errors: @user.errors.full_messages
      }
    end
  end

  def update
    respond_to do |format|
      @user.update :score => params[:score]

      if @user.update(user_params)
        format.html { redirect_to @user, notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :host, :pin, :score)
  end
end
