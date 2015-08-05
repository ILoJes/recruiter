class Message < ActiveRecord::Base
  belongs_to :candidate
  belongs_to :recruiter
end
