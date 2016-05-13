json.array!(@reviews) do |review|
  json.extract! review, :id, :rating, :checked, :user_id, :post_id, :product_id
  json.url review_url(review, format: :json)
end
