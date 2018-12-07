require 'rails_helper'

RSpec.describe Course, type: :model do
  
  it { should respond_to :title }
  it { should respond_to :description }
  it { should respond_to :course_number }
  it { should respond_to :hours }

  it { should validate_presence_of :title }
  it { should validate_presence_of :description }
  it { should validate_presence_of :course_number }
  
end
