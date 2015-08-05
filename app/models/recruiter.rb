class Recruiter < ActiveRecord::Base
  belongs_to :company
  has_many :messages
end
