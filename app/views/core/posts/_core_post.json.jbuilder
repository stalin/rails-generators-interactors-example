json.extract! core_post, :id, :name, :title, :content, :created_at, :updated_at
json.url core_post_url(core_post, format: :json)