class Week < ApplicationRecord
  belongs_to :course
  has_many :lessons

  validates :title, :week_number, :course_id, :presence => true
end
