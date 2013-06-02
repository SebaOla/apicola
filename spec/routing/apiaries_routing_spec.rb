require "spec_helper"

describe ApiariesController do
  describe "routing" do

    it "routes to #index" do
      get("/apiaries").should route_to("apiaries#index")
    end

    it "routes to #new" do
      get("/apiaries/new").should route_to("apiaries#new")
    end

    it "routes to #show" do
      get("/apiaries/1").should route_to("apiaries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/apiaries/1/edit").should route_to("apiaries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/apiaries").should route_to("apiaries#create")
    end

    it "routes to #update" do
      put("/apiaries/1").should route_to("apiaries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/apiaries/1").should route_to("apiaries#destroy", :id => "1")
    end

  end
end
