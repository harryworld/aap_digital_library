# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

for i in 1..89
  Issue.create id: i, number: "#{i}"
end
Issue.update 1, name: "Volume 1, 1993", number: "1"
Issue.update 88, name: "MAY/JUN 2014", number: "88"
Issue.update 89, name: "JUL/AUG 2014", number: "89"
# Issue.update 90, name: "SEP/OCT 2014", number: "90", tagline: "Rasheed Araeen, El Arakawa, Ho Chi Minh City, Montien Boonma & Navin Rawanchaikul, Tansaekhwa"

Author.create([
  { id: 1, name: "Elaine W. Ng" },
  { id: 2, name: "Navin Rawanchaikul" },
  { id: 3, name: "Taro Masushio" },
  { id: 4, name: "Tony Albert" }
])

Category.create([
  { id: 1, name: "Editor's Letter" },
  { id: 2, name: "Reports" },
  { id: 3, name: "Essays" },
  { id: 4, name: "Profiles" },
  { id: 5, name: "Features" },
  { id: 6, name: "Reviews" },
  { id: 7, name: "The Sketch" }
])
