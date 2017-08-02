class RemoveAnswersIdColumnFromQuestionsTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :questions, :answers_id
  end
end
