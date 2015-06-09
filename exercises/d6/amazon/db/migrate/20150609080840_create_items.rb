class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :retailer
      t.integer :stock
      t.float :price

      t.timestamps null: false
    end
  end
end
