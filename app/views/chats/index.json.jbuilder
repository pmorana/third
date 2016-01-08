json.array!(@chats) do |chat|
  json.extract! chat, :id, :event_id, :user_id, :body, :created_by
  json.url chat_url(chat, format: :json)
end
