class Role < ActiveRecord::Base
	has_many :recruiters
	has_many :vacancies
end
