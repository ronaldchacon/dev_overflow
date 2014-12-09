class Answer < ActiveRecord::Base
  belongs_to :question
  has_many :votes, as: :vote_for
  validates :title, presence: true
  validates :content, presence: true
end
