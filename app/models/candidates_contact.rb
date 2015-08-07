class CandidatesContact < ActiveRecord::Base
  belongs_to :candidate
  belongs_to :channel
  has_many :conversations
end
