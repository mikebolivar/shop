json.array!(@comments) do |comment|
  json.extract! comment, :id, :comment, :checked, :shopify_comment_id, :user_id, :post_id
  json.url comment_url(comment, format: :json)
end
