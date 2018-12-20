require 'rails_helper'

RSpec.describe UnitInstructor, type: :model do
  it { should respond_to :delivery_id }
  it { should respond_to :user_id }
end
