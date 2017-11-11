class Figther < ActiveRecord::Base
  # Remember to create a migration!
  def change
  create_table :figthers do |t|
  	t.string :name
  	t.integer :age

  	t.timestamps
  	end
  end
end