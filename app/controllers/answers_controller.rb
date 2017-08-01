class AnswersController < ApplicationController
  def index
  end

  def create
    @answer = Answer.new(answer_params)
    @answer.user_id = session[:user_id]

    if @answer.save!
      redirect_to @answer
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
  end

  def destroy
  end

  private
  def answer_params
    params.require(:answer).permit(:id, :text)
  end
end
