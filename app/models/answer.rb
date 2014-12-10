class Answer < ActiveRecord::Base
  belongs_to :question
  has_many :votes, as: :vote_for
  validates :title, presence: true
  validates :content, presence: true

  def upvote
    self.votes.create
  end

  def downvote
    self.vote.last.destroy
  end

end
