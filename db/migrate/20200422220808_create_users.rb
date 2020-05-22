class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :goal
      t.string :lifestyle
      t.integer :age
      t.integer :weight
      t.integer :bf_current
      t.integer :bf_goal
      t.integer :waist
      t.integer :arm
      t.integer :thigh
      t.integer :chest

      t.timestamps
    end
  end
end
