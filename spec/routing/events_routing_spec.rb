require "rails_helper"

describe EventsController do
  describe "routing" do

    it "routes to #new" do
      expect(:get => "/events/new").to route_to("events#new")
    end

    it "routes to #show" do
      expect(:get => "/events/1").to route_to("events#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/events/1/edit").to route_to("events#edit", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/events/1").to route_to("events#destroy", :id => "1")
    end

    it "routes to #bulk_create" do
      expect(:post => "/events/1/bulk_create").to route_to("events#bulk_create", :id => "1")
    end
  end
end
