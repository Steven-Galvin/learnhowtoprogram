require 'rails_helper'

describe Lesson do
  it { should validate_presence_of :title }
  it { should validate_presence_of :content }
  it { should validate_presence_of :day }
  it { should validate_presence_of :lesson_type }
  it { should validate_presence_of :lesson_number }
end
 
