class QuestionsController < ApplicationController
  def new

  end

  def create
    @question = Question.new(question_params)

    if @question.save!
      redirect_to @question
    else
      render 'new'
    end
  end

  private
  def question_params
    params.require(:question).permit(:text)
  end
end