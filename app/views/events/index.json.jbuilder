json.array!(@events) do |event|
  json.extract! event, :id, :event_title, :event_info, :event_time
  json.url event_url(event, format: :json)
end
