class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :avatar
      t.string :currency 
      t.integer :cash
    end
  end
end
