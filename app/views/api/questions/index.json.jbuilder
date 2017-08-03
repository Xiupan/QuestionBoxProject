json.questions @questions do |question|
  json.id question.id
  json.title question.title
  json.text question.text
end
