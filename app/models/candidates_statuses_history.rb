class CandidatesStatusesHistory < ActiveRecord::Base
  belongs_to :candidate
  belongs_to :vacancy
  belongs_to :candidates_status
end
