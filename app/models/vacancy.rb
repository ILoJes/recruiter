class Vacancy < ActiveRecord::Base
  belongs_to :company
  belongs_to :status
  has_many :candidates_status_histories
  has_many :vacancies_skills
end
