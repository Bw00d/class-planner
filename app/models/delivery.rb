class Delivery < ApplicationRecord
  before_save :set_date

  acts_as_commentable dependent: :destroy

  validates :course_id, presence: true
  has_one :course
  has_many :unit_instructors, dependent: :destroy
  has_many :costs

  scope :scheduled, -> { where(booked: true) }
  scope :unscheduled, -> { where(booked: false) }

  def course
    Course.find(self.course_id)
  end

  def display_address
    if self.address.present?
      self.address + self.city + ', ' + "\n" + self.state + ' ' + self.zip
    else
      display_location(self)
    end
  end

  def display_location(place)
    if place.city.present? && place.state.present?
      place.city + ', ' + place.state
    elsif place.city.present? && !place.state.present?
      place.city
    elsif !place.city.present? && place.state.present?
      place.state
    end
  end

  def display_lead_instructor
    if self.lead_instructor
      User.find(self.lead_instructor)
    end
  end

  def unit_instructors
    UnitInstructor.where(delivery_id: self.id)
  end

  def display_course(id)
    course = Course.find(id)
    return "#{course.course_number } - #{course.title},#{course.id}"
  end

  def display_end_date
    if self.end_date
      self.end_date - 1.day
    end
  end

  private

    def set_date
      if self.end_date
        self.end_date = self.end_date + 1.day
      end
    end

end
