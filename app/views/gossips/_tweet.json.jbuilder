json.extract! tweet, :id, :message, :created_at, :updated_at
json.url gossip_url(tweet, format: :json)
