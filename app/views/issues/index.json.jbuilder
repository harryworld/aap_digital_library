json.array!(@issues) do |issue|
  json.extract! issue, :id, :name, :number, :tagline, :cover_image
  json.url issue_url(issue, format: :json)
end
