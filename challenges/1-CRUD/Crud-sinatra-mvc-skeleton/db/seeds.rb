require 'faker'

10.times do |i|
  Figther.create(name: Faker::DragonBall.name, age: rand(1) + 1)
end