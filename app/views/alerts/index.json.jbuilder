json.array!(@alerts) do |alert|
  json.extract! alert, :id, :alert_set, :user_id, :event_id, :alert_name
  json.url alert_url(alert, format: :json)
end
