class Conversation < ActiveRecord::Base
  belongs_to :candidates_contact
  belongs_to :rectuiter
end
