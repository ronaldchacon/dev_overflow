class Vote < ActiveRecord::Base
  belongs_to :vote_for, polymorphic: true
end
