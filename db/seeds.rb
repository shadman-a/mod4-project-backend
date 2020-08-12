# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do 
    User.create(name: "Bob", image:"", password:"", username:"" )
end

5.times do 
    Character.create(name: "Pat", image:"", sound:"" )
end

5.times do 
    GamePlay.create(character_id: Character.all.sample.id, user_id:User.all.sample.id, score: 0 )
end

