json.extract! commonquestion, :id, :commonquestion_id, :question_text, :options, :answer_option_number, :created_at, :updated_at
json.url commonquestion_url(commonquestion, format: :json)
