class CreateBowlIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :bowl_ingredients do |t|
      t.integer :bowl_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
