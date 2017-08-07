class SearchController < ApplicationController
  def index
    if params[:query].present?
     @questions = Question.search(params[:query])
   else
     @questions = Question.all
   end
  end
end
