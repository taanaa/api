class Teacher < ApplicationRecord
  has_many :lectuers
  has_many :subjects, through: :teacher_subjects
end
