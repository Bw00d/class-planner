require 'rails_helper'

RSpec.describe "UnitInstructors", type: :request do
  describe "GET /unit_instructors" do
    it "works! (now write some real specs)" do
      get unit_instructors_path
      expect(response).to have_http_status(200)
    end
  end
end
