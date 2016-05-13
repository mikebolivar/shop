json.array!(@products) do |product|
  json.extract! product, :id, :title, :body_html, :variants, :images, :shopify_product_id, :shopify_last_update
  json.url product_url(product, format: :json)
end
