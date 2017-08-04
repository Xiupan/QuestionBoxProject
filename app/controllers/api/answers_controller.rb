class Api::AnswersController < Api::ApiController
  before_action :authenticate_user!, only: [:update, :create, :markCorrect, :destroy]

  def create
    @answer = Answer.new(answer_params)
    @answer.user_id = @current_user.id

    if @answer.save!
      head :created
    else
      render json: {errors: @person.errors}, status: 422
    end
  end

  def markCorrect
    @answer = Answer.find(params[:id])
    @answer.correct = params[:correct]

    if @answer.save!
      head :created
    else
      render json: {errors: @person.errors}, status: 422
    end
  end

  private
  def answer_params
    params.require(:answer).permit(:id, :text, :question_id)
  end
end
