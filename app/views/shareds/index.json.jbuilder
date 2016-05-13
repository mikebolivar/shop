json.array!(@shareds) do |shared|
  json.extract! shared, :id, :via, :body, :checked, :user_id, :post_id
  json.url shared_url(shared, format: :json)
end
