class AnswersController < ApplicationController
  def index
  end

  def create
    @answer = Answer.new(answer_params)
    @answer.question_id = params[:question_id]
    @answer.user_id = session[:user_id]

    if @answer.save!
      # FIXME: Should go back to question tied to this new answer
      redirect_to root_path
    else
      render :new
    end
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
    @question = Question.find(params[:question_id])
    # @answer = Answer.where(:question_id => params[:question_id]).where(:id => params[:id]).first
    @answer = Answer.find(params[:id])
    @answer.correct = true
    @answer.save

    redirect_to question_path(@question)
  end

  def destroy
  end

  private
  def answer_params
    params.require(:answer).permit(:id, :text)
  end
end
