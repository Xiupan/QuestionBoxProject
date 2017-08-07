class Answer < ApplicationRecord
  include PgSearch
  belongs_to :user
  belongs_to :question
end
