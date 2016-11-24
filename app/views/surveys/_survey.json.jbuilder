json.extract! survey, :id, :content, :created_at, :updated_at
json.url survey_url(survey, format: :json)