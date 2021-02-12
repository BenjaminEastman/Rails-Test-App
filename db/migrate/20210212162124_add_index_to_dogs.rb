class AddIndexToDogs < ActiveRecord::Migration[6.1]
  def change
    add_index :dogs, :name
  end
end
