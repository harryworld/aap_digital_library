json.array!(@title_colors) do |title_color|
  json.extract! title_color, :id, :name, :hex
  json.url title_color_url(title_color, format: :json)
end
