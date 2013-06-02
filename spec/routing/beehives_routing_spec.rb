require "spec_helper"

describe BeehivesController do
  describe "routing" do

    it "routes to #index" do
      get("/beehives").should route_to("beehives#index")
    end

    it "routes to #new" do
      get("/beehives/new").should route_to("beehives#new")
    end

    it "routes to #show" do
      get("/beehives/1").should route_to("beehives#show", :id => "1")
    end

    it "routes to #edit" do
      get("/beehives/1/edit").should route_to("beehives#edit", :id => "1")
    end

    it "routes to #create" do
      post("/beehives").should route_to("beehives#create")
    end

    it "routes to #update" do
      put("/beehives/1").should route_to("beehives#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/beehives/1").should route_to("beehives#destroy", :id => "1")
    end

  end
end
