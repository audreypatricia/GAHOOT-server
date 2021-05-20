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
#     t.text "players", default: [], array: true
#     t.boolean "gameStart", default: false
#   end

Game.destroy_all
game1 = Game.create :quiz_id => 4, :pin => '012345', :players => []
game2 = Game.create :quiz_id => 5, :pin => '123456', :players => [["123456", "David", "300"],["123456", "Sam", "300"], ["123456", "Katie", "800"]]
game3 = Game.create :quiz_id => 6, :pin => '234567', :players => [['234567', "Audrey", "400"],['234567', "Katie", "300"], ['234567', "Katie", "600"]]
game4 = Game.create :quiz_id => 7, :pin => '345678', :players => [['345678', "Paul", "300"],['345678', "David", "300"], ['345678', "Katie", "100"]]
game5 = Game.create :quiz_id => 8, :pin => '456789', :players => [['456789', "Sam", "600"],['456789', "Audrey", "300"], ['456789', "Katie", "500"]]
game6 = Game.create :quiz_id => 9, :pin => '567890', :players => [['567890', "Paul", "700"],['567890', "Katie", "300"], ['567890', "Katie", "400"]]
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
q1 = Question.create :question => "What iss in my pocket?", :answer_options => ['handsies', 'lint', 'the one ring', 'a monkey', '2'], :image => "https://res.cloudinary.com/paulyc/image/upload/v1621437839/lightbulbBrain_t62g5v.jpg"
q2 = Question.create :question => "What is 1 + 1?", :answer_options => ['11', '2', '1+1', '3', '1'], :image => "https://res.cloudinary.com/paulyc/image/upload/v1621437839/lightbulbBrain_t62g5v.jpg"
q3 = Question.create :question => "What colour is the sun", :answer_options => ['Yellow', 'Red', 'Orange', 'White', '3'], :image => "https://res.cloudinary.com/paulyc/image/upload/v1621437839/lightbulbBrain_t62g5v.jpg"
q4 = Question.create :question => "What is the biggest Island in the world?", :answer_options => ['Australia', 'Greenland', 'New Guinea', 'Madagascar', '1'], :image => "https://res.cloudinary.com/paulyc/image/upload/v1621437839/lightbulbBrain_t62g5v.jpg"
q5 = Question.create :question => "The largest ocean in the world is...", :answer_options => ['Pacific', 'Atlantic', 'Indian', 'Arctic', '0'], :image => "https://res.cloudinary.com/paulyc/image/upload/v1621437839/lightbulbBrain_t62g5v.jpg"
q6 = Question.create :question => "Who was the first computer programmer?", :answer_options => ['Ada Lovelace', 'Michael Jordan', 'Homer Simpson', 'Tim Berners-Lee', '0'], :image => "https://res.cloudinary.com/paulyc/image/upload/v1621437839/lightbulbBrain_t62g5v.jpg"
q7 = Question.create :question => "Who invented the internet?", :answer_options => ['Joel Turnbull', 'Tim Berners-Lee', 'Dr. Emmett Brown', 'Dr. Seuss', '1'], :image => "https://res.cloudinary.com/paulyc/image/upload/v1621437839/lightbulbBrain_t62g5v.jpg"
q8 = Question.create :question => "Which of the following ingredients is not normally used to brew beer?", :answer_options => ['Hops', 'Yeast', 'Malt', 'Vinegar', '3'], :image => "https://res.cloudinary.com/paulyc/image/upload/v1621437839/lightbulbBrain_t62g5v.jpg"
q9 = Question.create :question => "How fast can an ostrich run?", :answer_options => ['25 km/hr', '50 km/hr', '65 km/hr', '75 km/hr', '2'], :image => "https://res.cloudinary.com/paulyc/image/upload/v1621437839/lightbulbBrain_t62g5v.jpg"
q10 = Question.create :question => "How much of your vision do you lose if you go blind in one eye?", :answer_options => ['50 percent', '10 percent', '35 percent', '20 percent', '3'], :image => "https://res.cloudinary.com/paulyc/image/upload/v1621437839/lightbulbBrain_t62g5v.jpg"
q11 = Question.create :question => "How many breaths does the human body take daily?", :answer_options => ['20,000', '10,000', '30,000', '40,000', '0'], :image => "https://res.cloudinary.com/paulyc/image/upload/v1621437839/lightbulbBrain_t62g5v.jpg"
q12 = Question.create :question => "What is the lifespan of a dragonfly?", :answer_options => ['24 hours', '24 days', '24 years', '24 minutes', '0'], :image => "https://res.cloudinary.com/paulyc/image/upload/v1621437839/lightbulbBrain_t62g5v.jpg"
q13 = Question.create :question => "Which actor played the ninth reincarnation of the Doctor in Doctor Who?", :answer_options => ['William Hartnell', 'Christopher Eccleston', 'Tom Baker', 'Jon Pertwee', '1'], :image => "https://res.cloudinary.com/paulyc/image/upload/v1621437839/lightbulbBrain_t62g5v.jpg"
q14 = Question.create :question => "Which colour pill does Neo swallow in The Matrix?", :answer_options => ['Blue', 'Red', 'Yellow', 'Green', '1'], :image => "https://res.cloudinary.com/paulyc/image/upload/v1621437839/lightbulbBrain_t62g5v.jpg"
q15 = Question.create :question => "What language is spoken in Brazil?", :answer_options => ['English', 'Gibberish', 'Spanish', 'Portuguese', '3'], :image => "https://res.cloudinary.com/paulyc/image/upload/v1621437839/lightbulbBrain_t62g5v.jpg"
q16 = Question.create :question => "What is the currency of Vietnam?", :answer_options => ['Dollar', 'Dong', 'DogeCoin', 'Bitcoin', '1'], :image => "https://res.cloudinary.com/paulyc/image/upload/v1621437839/lightbulbBrain_t62g5v.jpg"
q17 = Question.create :question => "How many notes are there in a musical scale?", :answer_options => ['7', '8', '17', '18', '0'], :image => "https://res.cloudinary.com/paulyc/image/upload/v1621437839/lightbulbBrain_t62g5v.jpg"
q18 = Question.create :question => "How many hearts does an octopus have?", :answer_options => ['1', '2', '3', '4', '2'], :image => "https://res.cloudinary.com/paulyc/image/upload/v1621437839/lightbulbBrain_t62g5v.jpg"
q19 = Question.create :question => "How many elements are in the periodic table?", :answer_options => ['108', '118', '128', '138', '1'], :image => "https://res.cloudinary.com/paulyc/image/upload/v1621437839/lightbulbBrain_t62g5v.jpg"
q20 = Question.create :question => "Which Marx Brother lived the longest at 86 years of age?", :answer_options => ['Zeppo', 'Groucho', 'Chico', 'Gummo', '1'], :image => "https://res.cloudinary.com/paulyc/image/upload/v1621437839/lightbulbBrain_t62g5v.jpg"
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

# create_table "users", force: :cascade do |t|
#   t.text "username"
#   t.boolean "host", default: false
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.text "password_digest"
#   t.text "email"
#   t.text "pin"
#   t.integer "score"
# end

User.destroy_all
u1 = User.create username: 'Audrey', email: 'audrey@ga.com', :pin => '012345', :score => '0', password: 'chicken', host:true
u2 = User.create username: 'Katie',  email: 'katie@ga.com', :pin => '012345', :score => '0', password: 'chicken', host:true
u3 = User.create username: 'Paul', email: 'paul@ga.com', :pin => '543210', :score => '0', password: 'chicken', host:true
u4 = User.create username: 'David', email: 'david@ga.com', :pin => '543210', :score => '0', password: 'chicken', host:true
u5 = User.create username: 'Sam', email: 'sam@ga.com', :pin => '543210', :score => '0', password: 'chicken', host:true
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
quiz1.questions << q1 << q5 << q8 << q11 << q13 << q17 << q19 << q20
quiz2.questions << q2 << q4 << q9 << q12 << q14 << q16
quiz3.questions << q3 << q6 << q7 << q10 << q15 << q18

puts 'guess and questions'
q1.guesses << guess1 << guess2 << guess3 << guess4 << guess5

puts 'user and quiz'
u1.quizzes << quiz1
