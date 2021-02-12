class CreateDog < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.string :name, null: false
      t.string :fav_food
      t.integer :age
      t.timestamps
    end
  end
end
