# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.all.destroy_all
puts "All users deleted !"
puts "All articles deleted !"
puts "All comments deleted !"
puts "All upvote deleted !"


puts "#{Faker::Artist.unique.name}@gmail.com"
puts "Create users"
5.times do |i|
  user = User.create!(
    name: Faker::Artist.name,
    email: "#{Faker::Lorem.characters(number: 10)}@gmail.com",
    password: Faker::Lorem.characters(number: 10)
  )
end
puts "User creation done !"

puts "Create articles"
User.all.each do |user|
  Article.create!(
    title: Faker::ChuckNorris.unique.fact,
    content: Faker::Lorem.unique.paragraph,
    user_id: user.id
  )
end
puts "Articles creation done !"

puts "Create comment"
Article.all.each do |article|
  User.all.sample(2).each do |user|
    Comment.create!(
      user_id: user.id,
      article_id: article.id,
      content: Faker::Lorem.unique.paragraph
    )
  end
end
puts "Comment creation done !"

puts "Create upvote"
Article.all.each do |article|
  User.all.sample(3).each do |user|
    Upvote.create!(
      user_id: user.id,
      article_id: article.id
    )
  end
end
puts "Upvotes creation done !"

puts "Seed done !"

