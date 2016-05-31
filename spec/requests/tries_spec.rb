require 'rails_helper'

RSpec.describe "Tries", type: :request do
  describe "GET /tries" do
    it "works! (now write some real specs)" do
      get tries_path
      expect(response).to have_http_status(200)
    end
  end
end
