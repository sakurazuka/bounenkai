require "rails_helper"

describe MembersController do
  describe "routing" do

    it "routes to #new" do
      expect(:get => "/events/1/members/new").to route_to("members#new", :event_id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/events/1/members/1/edit").to route_to("members#edit", :event_id => "1", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/events/1/members/1").to route_to("members#destroy", :event_id => "1", :id => "1")
    end

  end
end
