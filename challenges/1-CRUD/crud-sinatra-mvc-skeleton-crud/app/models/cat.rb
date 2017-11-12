class Cat < ActiveRecord::Base
  # Remember to create a migration!
  validates :name, :age, presence: true
end
