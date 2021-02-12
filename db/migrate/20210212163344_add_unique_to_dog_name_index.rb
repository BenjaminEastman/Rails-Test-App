class AddUniqueToDogNameIndex < ActiveRecord::Migration[6.1]
  def change
    remove_index :dogs, :name
    add_index :dogs, :name, { unique: true}
  end
end
