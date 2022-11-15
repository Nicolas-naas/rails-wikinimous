require 'faker'

10.times do
  Article.create(title: Faker::Lorem.word, content: Faker::ChuckNorris.fact)
end
