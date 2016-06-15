json.array!(@sessions) do |session|
  json.extract! session, :id, :name
  json.url session_url(session, format: :json)
end
