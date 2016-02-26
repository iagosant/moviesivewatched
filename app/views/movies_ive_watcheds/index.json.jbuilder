json.array!(@movies_ive_watcheds) do |movies_ive_watched|
  json.extract! movies_ive_watched, :id, :title, :director, :date
  json.url movies_ive_watched_url(movies_ive_watched, format: :json)
end
