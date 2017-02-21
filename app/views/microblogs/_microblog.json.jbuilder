json.extract! microblog, :id, :content, :user_id, :created_at, :updated_at
json.url microblog_url(microblog, format: :json)