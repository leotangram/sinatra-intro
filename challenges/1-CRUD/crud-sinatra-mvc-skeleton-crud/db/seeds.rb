require 'faker'

10.times do
  Cat.create!(name: Faker::Cat.name, age: rand(15) + 1)
end