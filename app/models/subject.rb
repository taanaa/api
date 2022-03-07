class Subject < ApplicationRecord
  has_many :lectuers
  belongs_to :teacher
end
