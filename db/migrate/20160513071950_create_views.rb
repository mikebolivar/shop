class CreateViews < ActiveRecord::Migration
  def change
    create_table :views do |t|
      t.boolean :checked
      t.references :user, index: true, foreign_key: true
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
