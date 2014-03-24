require "spec_helper"

describe MembersController do
  describe "routing" do

    it "routes to #new" do
      get("/events/1/members/new").should route_to("members#new", :event_id => "1")
    end

    it "routes to #edit" do
      get("/events/1/members/1/edit").should route_to("members#edit", :event_id => "1", :id => "1")
    end

    it "routes to #destroy" do
      delete("/events/1/members/1").should route_to("members#destroy", :event_id => "1", :id => "1")
    end

  end
end
