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
game1 = Game.create :quiz_id => 4, :pin => '1234567', :players => [["Audrey", "200"],["Paul", "300"], ["Katie", "600"]]
game2 = Game.create :quiz_id => 5, :pin => '1234567', :players => [["David", "300"],["Sam", "300"], ["Katie", "800"]]
game3 = Game.create :quiz_id => 6, :pin => '1234567', :players => [["Audrey", "400"],["Katie", "300"], ["Katie", "600"]]
game4 = Game.create :quiz_id => 7, :pin => '1234567', :players => [["Paul", "300"],["David", "300"], ["Katie", "100"]]
game5 = Game.create :quiz_id => 8, :pin => '1234567', :players => [["Sam", "600"],["Audrey", "300"], ["Katie", "500"]]
game6 = Game.create :quiz_id => 9, :pin => '1234567', :players => [["Paul", "700"],["Katie", "300"], ["Katie", "400"]]
puts "#{ Game.count } games created"

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
guess1 = Guess.create guess: true
guess2 = Guess.create guess: false
guess3 = Guess.create guess: true
guess4 = Guess.create guess: false
guess5 = Guess.create guess: true
guess6 = Guess.create guess: false
guess7 = Guess.create guess: true
puts "#{Guess.count} guesses created"

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
q3 = Question.create :question => "What colour is the sun", :answer_options => ['Yellow', 'Red', 'Orange', 'White', '3']
q4 = Question.create :question => "What is the biggest Island in the world?", :answer_options => ['Australia', 'Greenland', 'New Guinea', 'Madagascar', '1']
q5 = Question.create :question => "The largest ocean in the world is...", :answer_options => ['Pacific', 'Atlantic', 'Indian', 'Arctic', '0']
q6 = Question.create :question => "Who was the first computer programmer?", :answer_options => ['Ada Lovelace', 'Michael Jordan', 'Homer Simpson', 'Tim Berners-Lee', '0']
q7 = Question.create :question => "Who invented the internet?", :answer_options => ['Joel Turnbull', 'Tim Berners-Lee', 'Dr. Emmett Brown', 'Dr. Seuss', '1']
puts "#{ Question.count } questions created"

#   create_table "quizzes", force: :cascade do |t|
#     t.text "category"
#     t.text "title"
#     t.integer "user_id"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end

Quiz.destroy_all
quiz1 = Quiz.create :category => 'General knowledge', :title => 'Test1'
quiz2 = Quiz.create :category => 'Education', :title => 'Test2'
quiz3 = Quiz.create :category => 'Trivia', :title => 'Test3'
quiz4 = Quiz.create :category => 'General knowledge', :title => 'Test4'
quiz5 = Quiz.create :category => 'Education', :title => 'Test5'
quiz6 = Quiz.create :category => 'Trivia', :title => 'Test6'
puts "#{ Quiz.count } quizzes created"

#   _table "users"
#     t.text "password"
#     t.text "username"
#     t.boolean "host", default: false
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end

User.destroy_all
u1 = User.create username: 'Audrey', email: 'audrey@ga.com', password: 'chicken', host:true
u2 = User.create username: 'Katie',  email: 'katie@ga.com', password: 'chicken', host:true
u3 = User.create username: 'Paul', email: 'paul@ga.com', password: 'chicken', host:true
u4 = User.create username: 'David', email: 'david@ga.com', password: 'chicken', host:true
u5 = User.create username: 'Sam', email: 'sam@ga.com', password: 'chicken', host:true
puts "#{User.count} hosts created"

# ###################assoc.##############

puts 'games and users'
game1.users << u1 << u2 << u3 << u4 << u5
game2.users << u1 << u2 << u3 << u4 << u5
game3.users << u1 << u2 << u3 << u4 << u5
game4.users << u1 << u2 << u3 << u4 << u5
game5.users << u1 << u2 << u3 << u4 << u5
game6.users << u1 << u2 << u3 << u4 << u5
u1.games << game1

puts 'game and quiz'
quiz1.games << game1
quiz2.games << game2
quiz3.games << game3
quiz4.games << game4
quiz5.games << game5
quiz6.games << game6

puts 'guesses and users'
u1.guesses << guess1
u2.guesses << guess2
u3.guesses << guess3
u4.guesses << guess4
u5.guesses << guess5

puts 'guess and game'
game1.guesses << guess1 << guess2 << guess3 << guess4 << guess5 << guess6 << guess7

puts 'quiz ques.'
quiz1.questions << q1 << q2
quiz2.questions << q3 << q4
quiz3.questions << q5 << q6 << q7

puts 'guess and questions'
q1.guesses << guess1 << guess2 << guess3 << guess4 << guess5

puts 'user and quiz'
u1.quizzes << quiz1
