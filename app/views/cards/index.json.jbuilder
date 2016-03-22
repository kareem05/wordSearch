json.array!(@cards) do |card|
  json.extract! card, :id, :title, :content
  json.url card_url(card, format: :json)
end
