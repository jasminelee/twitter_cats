json.array!(@tweets) do |tweet|
  json.extract! tweet, :id, :content, :user_id, :likes
  json.url tweet_url(tweet, format: :json)
end
