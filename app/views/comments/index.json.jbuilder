json.array!(@comments) do |comment|
  json.extract! comment, :id, :remark, :user_id, :combination_id
  json.url comment_url(comment, format: :json)
end
