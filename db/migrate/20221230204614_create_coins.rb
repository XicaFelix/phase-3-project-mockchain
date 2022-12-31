class CreateCoins < ActiveRecord::Migration[6.1]
  def change
    create_table :Coins do |t|
      t.string :name
      t.integer :price
    end
  end
end
