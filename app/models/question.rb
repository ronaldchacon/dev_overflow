class Question < ActiveRecord::Base
  has_many :answers, dependent: :destroy
  has_many :votes, as: :vote_for
  validates :title, presence: true
  validates :content, presence: true
  def upvote
    puts "you did it. "
  end
end

