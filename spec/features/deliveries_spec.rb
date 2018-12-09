require 'rails_helper'


describe 'Deliveries pages', type: :feature do
  
  let(:admin_user) { FactoryBot.create(:admin_user) }
  let(:ordinary_user) { FactoryBot.create(:user) }

  context 'visiting deliveries#index page' do
     before { login_as(admin_user) }

    it 'should have the right title' do
      visit '/deliveries'
      expect(page).to have_title("CCC Fire | Deliveries")
    end
  end
end

# feature 'Home page' do

#   # Scenario: Visit the home page
#   #   Given I am a visitor
#   #   When I visit the home page
#   #   Then I see "Welcome"
#   scenario 'visit the home page' do
#     visit root_path
#     expect(page).to have_content 'Welcome'
#   end

# end
