class Recruiter < ActiveRecord::Base
  belongs_to :company
  belongs_to :status
  belongs_to :role
  belongs_to :status
  has_many :candidateis
  has_many :conversations
  has_many :cvs
end
