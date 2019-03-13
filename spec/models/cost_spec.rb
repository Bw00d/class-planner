require 'rails_helper'

RSpec.describe Cost, type: :model do
  it { should respond_to :price }
  it { should respond_to :user_id }
  it { should respond_to :delivery_id }
  it { should respond_to :comment }
  it { should respond_to :date }

  it { should belong_to :delivery }
end
