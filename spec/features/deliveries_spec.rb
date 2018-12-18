require 'rails_helper'


describe 'Deliveries pages', type: :feature do
  
  let(:admin_user) { FactoryBot.create(:admin_user) }
  let(:ordinary_user) { FactoryBot.create(:user) }
  let(:course) { FactoryBot.create(:course) }

  before { login_as(admin_user) }

  context 'visiting deliveries#index page' do

    it 'should have the right title' do
      visit '/deliveries'
      expect(page).to have_title("CCC Fire | Deliveries")
    end

    it 'should have the right links' do
      visit '/deliveries'
      expect(page).to have_link("New Delivery")
      click_link("New Delivery")
      expect(page).to have_title("CCC Fire | New Delivery")
    end
  end

  context 'creating a delivery' do

    it 'should have the right form elements' do
      visit '/deliveries'
      click_link("New Delivery")
      expect(page).to have_selector("input", id: "delivery_course_number")
      expect(page).to have_selector("input", id: "delivery_requestor")
      expect(page).to have_selector("input", id: "delivery_requestor")
      expect(page).to have_selector("input", id: "delivery_start_date")
      expect(page).to have_selector("input", id: "delivery_end_date")
      expect(page).to have_selector("input", id: "delivery_times")
      expect(page).to have_selector("input", id: "delivery_zip")
      expect(page).to have_selector("textarea", id: "delivery_address")
      expect(page).to have_selector("textarea", id: "delivery_poc")
      expect(page).to have_selector("input", id: "delivery_state")
      expect(page).to have_selector("input", id: "delivery_city")
      expect(page).to have_selector("input", id: "delivery_fees")
      expect(page).to have_selector("input", id: "delivery_credits")
      expect(page).to have_select('delivery[lead_instructor]')
      expect(page).to have_unchecked_field("delivery[booked]")
      expect(page).to have_unchecked_field("delivery[fac]")
      expect(page).to have_unchecked_field("delivery[invoiced]")
      expect(page).to have_unchecked_field("delivery[ta]")
      expect(page).to have_unchecked_field("delivery[certificates]")
      expect(page).to have_unchecked_field("delivery[materials]")
      expect(page).to have_unchecked_field("delivery[agenda]")
      expect(page).to have_unchecked_field("delivery[welcome_letter]")
      expect(page).to have_unchecked_field("delivery[roster]")
      expect(page).to have_unchecked_field("delivery[flyer_sent]")
      expect(page).to have_unchecked_field("delivery[audio_visual]")
      expect(page).to have_selector("textarea", id: "delivery_notes")
    end

    it 'should create a delivery with valid attributes' do
      
    end
  end
end

