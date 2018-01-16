json.extract! question, :id, :question_id, :question_text, :options, :created_at, :updated_at
json.url question_url(question, format: :json)
