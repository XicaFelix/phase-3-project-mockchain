class CreateCoinTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :coin_transactions do |t|
      t.string :business_type
      t.integer :quantity
      t.integer :price
      t.integer :coin_id
      t.integer :user_id
      t.timestamps
    end
  end
end
