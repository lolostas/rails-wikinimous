require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Article.destroy_all

Article.create([
  { title: 'Les maladies mortelles', content: 'Les maladies mortelles tuent !!!!!!!!' },
  { title: 'Walah y a chaleur', content: 'la canicule va-t-elle tuer + que jamais ?' },
])



50.times do
  Article.create(
    title: Faker::LordOfTheRings.character,
    content: Faker::Pokemon.move
  )
end
