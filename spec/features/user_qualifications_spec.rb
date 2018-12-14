require 'rails_helper'


describe 'Adding instructor qualifications', type: :feature do
  
  let(:admin_user) { FactoryBot.create(:admin_user) }
  let(:ordinary_user) { FactoryBot.create(:user) }
  let(:course) { FactoryBot.create(:course) }

  context 'visiting deliveries#index page' do
     before { login_as(admin_user) }

    it 'should have a link to the user show page' do
      visit "/admin/users/#{ordinary_user.first_name}-#{ordinary_user.last_name}"
      find('a[data-original-title="Show Details"]').click
      expect(page).to have_title("CCC Fire | #{@user.full_name}")
    end
  end
end
