class Candidate < ActiveRecord::Base
  belongs_to :sex
  belongs_to :candidate_status
  belongs_to :recruiter
  has_many :candidates_contacts
  has_many :cvs
  has_many :candidates_status_histories
  has_many :candidates_skills
end
