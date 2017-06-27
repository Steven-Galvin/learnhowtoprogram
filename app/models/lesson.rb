class Lesson < ApplicationRecord
  belongs_to :week

  validates :title, :content, :day, :lesson_type, :lesson_number, :week_id, :presence => true
end
