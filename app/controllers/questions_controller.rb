class QuestionsController < ApplicationController
  def index
    if params[:query].present?
      @questions = Question.search(params[:query]).page(params[:page]).per(10)
    else
      @questions = Question.page(params[:page]).per(10)
    end
  end

  # @posts = Post.page(params[:page]).per(10)

  def new

  end

  def create
    @question = Question.new(question_params)
    @question.user_id = session[:user_id]

    if @question.save!
      redirect_to @question
    else
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])

    # FIXME
    @answers = Answer.all
  end

  def update
    @question = Question.find(params[:id])
  end

  private
  def question_params
    params.require(:question).permit(:id, :title, :text, :users_id, :answers_id)
  end
end
