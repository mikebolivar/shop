json.array!(@posts) do |post|
  json.extract! post, :id, :type, :image, :author, :title, :body, :place, :rating, :no_likes, :no_shareds, :no_views, :no_comments, :public, :shopify_article_id, :user_id
  json.url post_url(post, format: :json)
end
