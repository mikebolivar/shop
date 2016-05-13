json.array!(@webhooks) do |webhook|
  json.extract! webhook, :id, :shopify_webhook_id, :event, :object_json
  json.url webhook_url(webhook, format: :json)
end
