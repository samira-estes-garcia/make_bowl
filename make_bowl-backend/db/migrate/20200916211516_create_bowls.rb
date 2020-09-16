class CreateBowls < ActiveRecord::Migration[6.0]
  def change
    create_table :bowls do |t|
      t.integer :quantity
      t.float :total_price

      t.timestamps
    end
  end
end
