class AddAnswersToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_reference :questions, :answers, foreign_key: true
  end
end
