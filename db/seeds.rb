# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

team = Team.create(name:"Mineola Portuguese", league: "Long Island Soccer Football League")

a = Player.create(name: "Jonathan Ghandforoush", age: 26, position: "St", team_id: team.id)
b= Player.create(name: "Alex Marano", age: 27, position: "Cb", team_id: team.id)
c= Player.create(name: "Andrew Ghandforoush", age: 24, position: "Fb", team_id: team.id)
d= Player.create(name: "Gary Marano", age: 22, position: "Wm", team_id: team.id)
e= Player.create(name: "Kunal Suri", age: 21, position: "Gk", team_id: team.id)
f = Player.create(name: "Pete Antoniades", age: 41, position: "St", team_id: team.id)
g = Player.create(name: "Dom Mauro", age: 27, position: "Cb", team_id: team.id)
h = Player.create(name: "Jake Raher", age: 22, position: "Fb", team_id: team.id)
i = Player.create(name: "Mikey Vultaggio", age: 21, position: "Cm", team_id: team.id)
j = Player.create(name: "Omar Ezat", age: 21, position: "Cm", team_id: team.id)
k = Player.create(name: "Kareem Harris", age: 21, position: "Wm", team_id: team.id)