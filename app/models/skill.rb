class Skill < ActiveRecord::Base
  belongs_to :skills_type
  has_many :candidates_skills
  has_many :vacancies_skills
end
