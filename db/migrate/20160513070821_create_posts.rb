class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :type
      t.string :image
      t.string :author
      t.string :title
      t.text :body
      t.string :place
      t.float :rating
      t.integer :no_likes
      t.integer :no_shareds
      t.integer :no_views
      t.integer :no_comments
      t.boolean :public
      t.string :shopify_article_id
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
