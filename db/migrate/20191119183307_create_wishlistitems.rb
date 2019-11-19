class CreateWishlistitems < ActiveRecord::Migration[5.0]
  def change
    create_table :wishlistitems do |t|
      t.integer :item_id
      t.string :title
      t.text :description
      t.string :image_url
      t.integer :quantity
      t.decimal :price
      t.references :wishlist, foreign_key: true

      t.timestamps
    end
  end
end
