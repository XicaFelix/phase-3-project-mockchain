class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.string :type
      t.integer :quantity
      t.integer :price
      t.timestamps
    end
  end
end
