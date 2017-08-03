class Api::QuestionsController < Api::ApiController
  def index
    @questions = Question.all
  end
end
