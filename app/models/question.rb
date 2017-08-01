class Question < ApplicationRecord
  belongs_to :user
  has_many :answers
  scope :username, -> { User.find_by(:id => Question.users_id) }
end
