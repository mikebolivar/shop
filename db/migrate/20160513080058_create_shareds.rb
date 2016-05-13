class CreateShareds < ActiveRecord::Migration
  def change
    create_table :shareds do |t|
      t.string :via
      t.text :body
      t.boolean :checked
      t.references :user, index: true, foreign_key: true
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
