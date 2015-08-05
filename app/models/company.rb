class Company < ActiveRecord::Base
  has_many :vacancies
  has_many :recruiters
end
