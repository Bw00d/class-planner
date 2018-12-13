class Delivery < ApplicationRecord

  acts_as_commontable dependent: :destroy

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

end

