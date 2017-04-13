# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user0 = User.create(user_name: "Audrey")
user1 = User.create(user_name: "Elaine")

poll0 = Poll.create(title: "Coffee Habits", user_id: user0.id)
poll1 = Poll.create(title: "Favorite Cartoon Charater", user_id: user1.id)

question0 = Question.create(poll_id: poll0.id, text: "Cream?")
question1 = Question.create(poll_id: poll0.id, text: "Sugar?")
question2 = Question.create(poll_id: poll0.id, text: "Time of Day?")

question4 = Question.create(poll_id: poll1.id, text: "Villain or Hero?")
question5 = Question.create(poll_id: poll1.id, text: "Superpowers?")


choice0 = AnswerChoice.create(question_id: question0.id, text: "Yes I love lactose")
choice1 = AnswerChoice.create(question_id: question0.id, text: "No, I am lactose intolerant")
choice2 = AnswerChoice.create(question_id: question1.id, text: "Yes the sweeter the better")
choice3 = AnswerChoice.create(question_id: question1.id, text: "No I like it bitter")
choice4 = AnswerChoice.create(question_id: question2.id, text: "Morning")
choice5 = AnswerChoice.create(question_id: question2.id, text: "Afternoon")

choice6 = AnswerChoice.create(question_id: question4.id, text: "Hero, duh!")
choice7 = AnswerChoice.create(question_id: question4.id, text: "Wreak havoc!")
choice8 = AnswerChoice.create(question_id: question5.id, text: "Flight")
choice9 = AnswerChoice.create(question_id: question5.id, text: "Strength")
choice10 = AnswerChoice.create(question_id: question5.id, text: "INVISIBILITY")

Response.create(user_id: user1.id, answer_choice_id: choice0.id)
Response.create(user_id: user1.id, answer_choice_id: choice2.id)
Response.create(user_id: user1.id, answer_choice_id: choice4.id)

Response.create(user_id: user0.id, answer_choice_id: choice7.id)
Response.create(user_id: user0.id, answer_choice_id: choice10.id)
