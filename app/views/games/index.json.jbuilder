json.array!(@games) do |game|
  json.extract! game, :id, :gamer_name
  json.url game_url(game, format: :json)
end
