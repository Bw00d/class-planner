require 'rails_helper'

RSpec.describe "Hours", type: :request do
  describe "GET /hours" do
    it "works! (now write some real specs)" do
      get hours_path
      expect(response).to have_http_status(200)
    end
  end
end
