# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

User.destroy_all
Post.destroy_all
Commentaire.destroy_all
UnderCommentaire.destroy_all

10.times do 
  user = User.create!(name: Faker::Name.unique.name)
end

20.times do 
  post = Post.create!(link: Faker::Cannabis.strain, user_id: (rand(User.first.id..User.last.id)))
end

20.times do
  commentaire = Commentaire.create!(content: Faker::Cannabis.health_benefit, user_id: (rand(User.first.id..User.last.id)), post_id: (rand(Post.first.id..Post.last.id)))
end

20.times do
  undercommentaire = UnderCommentaire.create!(content: Faker::Cannabis.buzzword, user_id: (rand(User.first.id..User.last.id)), commentaire_id: (rand(Commentaire.first.id..Commentaire.last.id)))
end