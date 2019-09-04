json.extract! event, :id, :event_name, :event_description, :status, :event_start_date, :user_id, :created_at, :updated_at
json.url event_url(event, format: :json)
