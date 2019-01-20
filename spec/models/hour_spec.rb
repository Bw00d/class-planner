require 'rails_helper'

RSpec.describe Hour, type: :model do
    it { should respond_to :start }
    it { should respond_to :end }
    it { should respond_to :break }
    it { should respond_to :comment }
    it { should respond_to :user_id }
    it { should respond_to :work_type }
end
