json.array!(@views) do |view|
  json.extract! view, :id, :checked, :user_id, :post_id
  json.url view_url(view, format: :json)
end
