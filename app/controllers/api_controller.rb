class ApiController < ApplicationController
  def index
    @questions = Question.all
    render json: @questions
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      render json: @question, status: :created, location: @question
    else
      render json: @question.errors, status: :unprocessable_entity
    end
  end

  def question_params
    params.require(:question).permit(:title, :text)
  end
end
