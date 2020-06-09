# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# How many f.keys?
#Macros 
Bet.destroy_all
Fight.destroy_all
User.destroy_all
Event.destroy_all

User.create!(name: 'bob', email: 'email@hotmail.com', password: 'password')
User.create!(name: 'ashley',email: 'email@hotmail.com', password: 'password')
User.create!(name: 'lisa',email: 'email@hotmail.com', password: 'password')

Event.create!(name: 'UFC 249', date:'')

Fight.create!(competitor_one:'Tony Ferguson', competitor_two:'Justin Gaethje', rounds:5,result:'pending',event_id:Event.all.first.id)
Fight.create!(competitor_one:'Francis Ngannou', competitor_two:'Jarzino Rozenstruik', rounds:3,result:'pending',event_id:Event.all.first.id)
Fight.create!(competitor_one:'Anthony Pettis', competitor_two:'Donald Cerrone', rounds:3,result:'pending',event_id:Event.all.first.id)


Bet.create!(amount:5.00, bet_type:'straight',odds:2.05,correct_bet: true,user_id:User.all.first.id,fight_id:Fight.all.first.id)
Bet.create!(amount:5.00, bet_type:'straight',odds:2.05,correct_bet: true,user_id:User.all.first.id,fight_id:Fight.all.first.id)
Bet.create!(amount:5.00, bet_type:'straight',odds:2.05,correct_bet: true,user_id:User.all.first.id,fight_id:Fight.all.first.id)
