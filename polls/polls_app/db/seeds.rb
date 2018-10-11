# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Poll.destroy_all
Question.destroy_all
AnswerChoice.destroy_all
Response.destroy_all

jay = User.create!(username: 'jayonethesk8')
nathan = User.create!(username: 'ricecakesxox')
dean = User.create!(username: 'xoxAnimeWeedLord6969xox')

water_poll = Poll.create!(author: jay, title: 'Best Water') #Dasani, Aquafina, Smart Water
ice_cream_poll = Poll.create!(author: nathan, title: 'Exemplary Ice Cream') #Napoleon
bootcamp_poll = Poll.create!(author: dean, title: 'Codiest Bootcamp') #Fullstack, App_Academy, Flatiron

water_question = Question.create!(poll: water_poll, text: 'What is your favourite water?') #Dasani, Aquafina, Smart Water
ice_cream_question = Question.create!(poll: ice_cream_poll, text: 'What is your favourite ice cream?') #Napoleon
bootcamp_question = Question.create!(poll: bootcamp_poll, text: 'Which coding bootcamp would you prefer joining?') #Fullstack, App_Academy, Flatiron

dasani = AnswerChoice.create!(question: water_question, text: 'Dasani')
aquafina = AnswerChoice.create!(question: water_question, text: 'Aquafina')
smart_water = AnswerChoice.create!(question: water_question, text: 'Smart Water')

chocolate = AnswerChoice.create!(question: ice_cream_question, text: 'Chocolate')
strawberry = AnswerChoice.create!(question: ice_cream_question, text: 'Strawberry')
vanilla = AnswerChoice.create!(question: ice_cream_question, text: 'Vanilla')

fullstack = AnswerChoice.create!(question: bootcamp_question, text: 'Fullstack')
app_academy = AnswerChoice.create!(question: bootcamp_question, text: 'App Academy')
flatiron = AnswerChoice.create!(question: bootcamp_question, text: 'Flatiron')

Response.create!(answer_choice: aquafina, respondent: jay)
Response.create!(answer_choice: strawberry, respondent: jay)
Response.create!(answer_choice: flatiron, respondent: jay)

Response.create!(answer_choice: dasani, respondent: nathan)
Response.create!(answer_choice: vanilla, respondent: nathan)
Response.create!(answer_choice: app_academy, respondent: nathan)

Response.create!(answer_choice: smart_water, respondent: dean)
Response.create!(answer_choice: chocolate, respondent: dean)
Response.create!(answer_choice: fullstack, respondent: dean)
