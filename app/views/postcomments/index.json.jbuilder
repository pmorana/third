json.array!(@postcomments) do |postcomment|
  json.extract! postcomment, :id, :title, :body, :event_id, :user_id, :created_by
  json.url postcomment_url(postcomment, format: :json)
end
