class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :body_html
      t.text :variants
      t.text :images
      t.integer :shopify_product_id
      t.datetime :shopify_last_update

      t.timestamps null: false
    end
  end
end
