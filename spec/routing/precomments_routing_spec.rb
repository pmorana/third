require "rails_helper"

RSpec.describe PrecommentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/precomments").to route_to("precomments#index")
    end

    it "routes to #new" do
      expect(:get => "/precomments/new").to route_to("precomments#new")
    end

    it "routes to #show" do
      expect(:get => "/precomments/1").to route_to("precomments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/precomments/1/edit").to route_to("precomments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/precomments").to route_to("precomments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/precomments/1").to route_to("precomments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/precomments/1").to route_to("precomments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/precomments/1").to route_to("precomments#destroy", :id => "1")
    end

  end
end
