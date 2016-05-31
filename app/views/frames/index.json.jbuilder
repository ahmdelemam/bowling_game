json.array!(@frames) do |frame|
  json.extract! frame, :id, :game_id, :status
  json.url frame_url(frame, format: :json)
end
