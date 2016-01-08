json.array!(@precomments) do |precomment|
  json.extract! precomment, :id, :title, :body, :event_id, :user_id, :created_by
  json.url precomment_url(precomment, format: :json)
end
