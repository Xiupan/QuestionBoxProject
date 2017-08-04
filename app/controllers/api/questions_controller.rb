class Api::QuestionsController < Api::ApiController
  before_action :authenticate_user!, only: [:update, :create, :destroy]
  def index
    @questions = Question.all
  end

  def create
    @question = Question.new(question_params)
    @question.user_id = @current_user.id

    if @question.save!
      head :created
    else
      render json: {errors: @person.errors}, status: 422
    end
  end

  def update

  end

  def destroy

  end

  private
  def question_params
    params.require(:question).permit(:id, :title, :text, :users_id, :answers_id)
  end
end
