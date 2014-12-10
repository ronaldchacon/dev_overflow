class Question < ActiveRecord::Base
  has_many :answers, dependent: :destroy
  has_many :votes, as: :vote_for
  validates :title, presence: true
  validates :content, presence: true
  def upvote
    self.votes.create
  end

  def downvote
    self.votes.last.destroy
  end

  def votecount
    self.votes.count
  end

end

