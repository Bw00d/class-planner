class Delivery < ApplicationRecord

  acts_as_commontable dependent: :destroy

  validates :course_id, presence: true
  has_one :course

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

  def display_course(id)
    course = Course.find(id)
    return "#{course.course_number } - #{course.title},#{course.id}"
  end

end

