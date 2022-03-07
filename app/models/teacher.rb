class Teacher < ApplicationRecord
  has_many :lectuers
  has_one :subject
end
