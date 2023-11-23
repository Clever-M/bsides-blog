json.extract! comment, :id, :subject, :body, :blog_post_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
