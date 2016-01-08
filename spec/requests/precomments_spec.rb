require 'rails_helper'

RSpec.describe "Precomments", type: :request do
  describe "GET /precomments" do
    it "works! (now write some real specs)" do
      get precomments_path
      expect(response).to have_http_status(200)
    end
  end
end
