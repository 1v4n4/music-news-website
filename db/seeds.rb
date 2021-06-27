# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.create([
  { name: 'Cover story', priority: 1 },
  { name: 'News', priority: 2 },
  { name: 'Interviews', priority: 3 },
  { name: 'Live', priority: 4 },
  { name: 'Reviews', priority: 5 }
])
