class Question < ApplicationRecord
  include PgSearch
  belongs_to :user
  has_many :answers
  scope :username, -> { User.find_by(:id => Question.users_id) }
  pg_search_scope :search, against: [:title, :text], :using => {:tsearch => {:prefix => true}}
  pg_search_scope :search_by_title, against: :title, :using => {:tsearch => {:prefix => true}}
end
