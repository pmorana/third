require "rails_helper"

RSpec.describe PostcommentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/postcomments").to route_to("postcomments#index")
    end

    it "routes to #new" do
      expect(:get => "/postcomments/new").to route_to("postcomments#new")
    end

    it "routes to #show" do
      expect(:get => "/postcomments/1").to route_to("postcomments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/postcomments/1/edit").to route_to("postcomments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/postcomments").to route_to("postcomments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/postcomments/1").to route_to("postcomments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/postcomments/1").to route_to("postcomments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/postcomments/1").to route_to("postcomments#destroy", :id => "1")
    end

  end
end
