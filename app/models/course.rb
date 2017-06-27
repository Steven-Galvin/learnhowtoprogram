class Course < ApplicationRecord
  has_many :weeks

  validates :title, :presence => true
end
