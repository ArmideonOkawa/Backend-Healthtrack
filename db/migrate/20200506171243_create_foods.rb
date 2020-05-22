class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :protein
      t.integer :carbohydrates
      t.integer :fats
      
      t.timestamps
    end
  end
end
