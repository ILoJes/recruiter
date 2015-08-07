class Status < ActiveRecord::Base
	has_many :companies
	has_many :recruiters
	has_many :vacancies
end
