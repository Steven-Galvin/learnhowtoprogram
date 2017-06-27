require 'rails_helper'

describe Week do
  it { should validate_presence_of :title }
  it { should validate_presence_of :week_number }
end
