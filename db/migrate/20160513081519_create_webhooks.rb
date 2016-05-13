class CreateWebhooks < ActiveRecord::Migration
  def change
    create_table :webhooks do |t|
      t.integer :shopify_webhook_id
      t.string :event
      t.text :object_json

      t.timestamps null: false
    end
  end
end
