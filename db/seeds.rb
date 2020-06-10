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


Event.create!(name: 'UFC Eye vs Calvillo', date:'2020-06-13')


Fight.create!(competitor_one:'Jessica Eye', competitor_two:'Cynthia Calvillo', rounds:5,result:'pending',event_id:Event.all.first.id)
Fight.create!(competitor_one:'Karl Roberson', competitor_two:'Martin Vettori', rounds:3,result:'pending',event_id:Event.all.first.id)
Fight.create!(competitor_one:'Merab Dvalishvili', competitor_two:'Ray Borg', rounds:3,result:'pending',event_id:Event.all.first.id)
Fight.create!(competitor_one:'Andre Fili', competitor_two:'Charles Jourdain', rounds:3,result:'pending',event_id:Event.all.first.id)
Fight.create!(competitor_one:'Jordan Espinosa', competitor_two:'Mark De La Rosa', rounds:3,result:'pending',event_id:Event.all.first.id)

Event.create!(name: 'Woodley vs Burns', date:'2020-05-30')
Fight.create!(competitor_one:'Tyrone Woodley', competitor_two:'Gilbert Burns', rounds:5,result:'pending',event_id:Event.all.second.id)
Fight.create!(competitor_one:'Blagoy Ivanov', competitor_two:'Augusto Saki', rounds:3,result:'pending',event_id:Event.all.second.id)
Fight.create!(competitor_one:'Billy Quarantillo', competitor_two:'Spike Carlyle', rounds:3,result:'pending',event_id:Event.all.second.id)
Fight.create!(competitor_one:'Roosevelt Roberts', competitor_two:'Brok Weaver', rounds:3,result:'pending',event_id:Event.all.second.id)
Fight.create!(competitor_one:'Mackenzie Dern', competitor_two:'Hannah Cifers', rounds:3,result:'pending',event_id:Event.all.second.id)


Bet.create!(amount:5.00, bet_type:'straight',odds:2.05,correct_bet: true,user_id:User.all.first.id,fight_id:Fight.all.first.id)
Bet.create!(amount:5.00, bet_type:'straight',odds:2.05,correct_bet: true,user_id:User.all.first.id,fight_id:Fight.all.first.id)
Bet.create!(amount:5.00, bet_type:'straight',odds:2.05,correct_bet: true,user_id:User.all.first.id,fight_id:Fight.all.first.id)
