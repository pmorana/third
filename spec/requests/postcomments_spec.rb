require 'rails_helper'

RSpec.describe "Postcomments", type: :request do
  describe "GET /postcomments" do
    it "works! (now write some real specs)" do
      get postcomments_path
      expect(response).to have_http_status(200)
    end
  end
end
