# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#  create_table "games", force: :cascade do |t|
#     t.integer "quiz_id"
#     t.text "pin"
#     t.text "users", default: [], array: true
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end

Game.destroy_all
game1 = Game.create :quiz_id => 1, :pin => 'chicken'
puts "#{ Game.count } games"

#   create_table "games_users", id: false, force: :cascade do |t|
#     t.integer "game_id"
#     t.integer "user_id"
#   end


#   create_table "guesses", force: :cascade do |t|
#     t.integer "game_id"
#     t.boolean "guess"
#     t.integer "user_id"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.integer "question_id"
#   end

Guess.destroy_all
guess1 = Guess.create :guess => true
guess2 = Guess.create :guess => false
guess3 = Guess.create :guess => true
guess4 = Guess.create :guess => false
guess5 = Guess.create :guess => true
guess6 = Guess.create :guess => false
guess7 = Guess.create :guess => true
puts "#{ Guess.count } guesses"

#   create_table "questions", force: :cascade do |t|
#     t.integer "quiz_id"
#     t.text "question"
#     t.text "image"
#     t.text "answer_options", default: [], array: true
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end

Question.destroy_all
q1 = Question.create :question => "whats in my pocket?", :answer_options => ['handsies', 'lint', 'the one ring', 'a monkey', '2']
q2 = Question.create :question => "whats 1 + 1?", :answer_options => ['11', '2', '1+1', '3', '1']
puts "#{ Question.count } questions"

#   create_table "quizzes", force: :cascade do |t|
#     t.text "category"
#     t.text "title"
#     t.integer "user_id"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end

Quiz.destroy_all
quiz1 = Quiz.create :category => 'mixed', :title => 'random'
puts "#{ Quiz.count } quizzes"

#   _table "users"
#     t.text "password"
#     t.text "username"
#     t.boolean "host", default: false
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end

User.destroy_all
u1 = User.create :username => 'Audrey', :password => 'chicken'
u2 = User.create :username => 'Katie', :password => 'chicken'
u3 = User.create :username => 'Paul', :password => 'chicken'
u4 = User.create :username => 'David', :password => 'chicken'
u5 = User.create :username => 'Sam', :password => 'chicken'
puts "#{ User.count } users"

####################assoc.##############

puts "games and users"
game1.users << u1 << u2 << u3 << u4 << u5
u1.games << game1

puts "game and quiz"
quiz1.games << game1


puts "guesses and users"
u1.guesses << guess1
u2.guesses << guess2
u3.guesses << guess3
u4.guesses << guess4
u5.guesses << guess5

puts "guess and game"
game1.guesses << guess1 << guess2 << guess3 << guess4 << guess5 << guess6 << guess7

puts "quiz ques."
quiz1.questions << q1 << q2

puts "guess and questions"
q1.guesses << guess1 << guess2 << guess3 << guess4 << guess5


