class HomeController < ApplicationController
  def index
    @questions = Question.all.page(params[:page]).per(10)
  end
end
