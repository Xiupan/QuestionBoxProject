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
      render json: {message: 'Question not created.'}, status: 422
    end
  end

  def update

  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    head :ok
  end

  private
  def question_params
    params.require(:question).permit(:id, :title, :text, :users_id, :answers_id)
  end
end
