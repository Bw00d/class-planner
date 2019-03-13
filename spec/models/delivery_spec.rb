require 'rails_helper'

RSpec.describe Delivery, type: :model do
  it { should respond_to :course_number }
  it { should respond_to :course_id }
  it { should respond_to :credits }
  it { should respond_to :fees }
  it { should respond_to :seat_load }
  it { should respond_to :start_date }
  it { should respond_to :end_date }
  it { should respond_to :times }
  it { should respond_to :address }
  it { should respond_to :requestor }
  it { should respond_to :poc }
  it { should respond_to :notes }
  it { should respond_to :booked }
  it { should respond_to :flyer_made }
  it { should respond_to :flyer_sent }
  it { should respond_to :reg_form }
  it { should respond_to :roster }
  it { should respond_to :welcome_letter }
  it { should respond_to :agenda }
  it { should respond_to :materials }
  it { should respond_to :ta }
  it { should respond_to :invoiced }
  it { should respond_to :certificates }
  it { should respond_to :fac }
  it { should respond_to :audio_visual }

  it { should have_many :unit_instructors }
  it { should have_many :costs }


  let(:valid_attributes) { FactoryBot.attributes_for(:delivery) }

  # Custom matchers such as be_invalid_without_a and have_a_valid_factory do not
  # work as ContactForm is not a real model (it is a subclass of
  # MailForm::Base). It also does not respond to #create and #save, only #new
  it 'has a valid factory' do
    delivery = Delivery.new(valid_attributes)
    expect(delivery).to be_valid
  end

end
