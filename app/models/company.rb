class Company < ActiveRecord::Base
  belongs_to :status
  has_many :recruiters
end
