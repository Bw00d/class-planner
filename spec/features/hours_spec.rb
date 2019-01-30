require 'rails_helper'


describe 'Hours pages', type: :feature do
  
  let(:admin_user) { FactoryBot.create(:admin_user) }
  let(:ordinary_user) { FactoryBot.create(:user) }
  let(:course) { FactoryBot.create(:course) }

  before { login_as(admin_user) }

  context 'visiting hours#index page' do
    before { visit '/hours' }
    it 'should have the right title' do
      
      expect(page).to have_title('CCC Fire | Hours')
    end

    it 'should have the right links' do
      expect(page).to have_link('New Entry')
      click_link('New Entry')
      expect(page).to have_title('CCC Fire | Add Hours')
    end
    it 'should have a link to timesheets' do
      expect(page).to have_link('Generate Timesheet')
      click_link('Generate Timesheet')
      expect(page).to have_title('CCC Fire | Add Timesheet')
    end
  end
end