json.albums @albums do |album|
  json.(album, :id, :name, :created_at, :updated_at)
  json.photos album.photos do |photo|
    json.(photo, :id, :name, :created_at, :updated_at)
  end
end

