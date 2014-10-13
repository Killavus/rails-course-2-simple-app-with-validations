json.array!(@triangles) do |triangle|
  json.extract! triangle, :id, :adjacent_leg, :opposite_leg, :hypotenuse
  json.url triangle_url(triangle, format: :json)
end
