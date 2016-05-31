json.array!(@tries) do |try|
  json.extract! try, :id, :frame_id, :score
  json.url try_url(try, format: :json)
end
