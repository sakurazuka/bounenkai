require "spec_helper"

describe EventsController do
  describe "routing" do

    it "routes to #new" do
      get("/events/new").should route_to("events#new")
    end

    it "routes to #show" do
      get("/events/1").should route_to("events#show", :id => "1")
    end

    it "routes to #edit" do
      get("/events/1/edit").should route_to("events#edit", :id => "1")
    end

    it "routes to #destroy" do
      delete("/events/1").should route_to("events#destroy", :id => "1")
    end

    it "routes to #bulk_create" do
      post("/events/1/bulk_create").should route_to("events#bulk_create", :id => "1")
    end
  end
end
