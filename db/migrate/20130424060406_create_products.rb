class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.references :user
      t.timestamps
    end
  end
  def self.down
    drop_table :products
  end
end
