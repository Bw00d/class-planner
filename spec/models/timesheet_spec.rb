require 'rails_helper'

RSpec.describe Timesheet, type: :model do
  it { should belong_to :user }
  it { should have_many :hours }
end
  