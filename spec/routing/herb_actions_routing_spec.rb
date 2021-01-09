require "rails_helper"

RSpec.describe HerbActionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/herb_actions").to route_to("herb_actions#index")
    end

    it "routes to #show" do
      expect(get: "/herb_actions/1").to route_to("herb_actions#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/herb_actions").to route_to("herb_actions#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/herb_actions/1").to route_to("herb_actions#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/herb_actions/1").to route_to("herb_actions#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/herb_actions/1").to route_to("herb_actions#destroy", id: "1")
    end
  end
end
