class Subject < ApplicationRecord
  has_many :lectuers
  has_many :teachers, through: :teacher_subjects
end
