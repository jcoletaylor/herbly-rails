require "rails_helper"

RSpec.describe HerbActionIndicationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/herb_action_indications").to route_to("herb_action_indications#index")
    end

    it "routes to #show" do
      expect(get: "/herb_action_indications/1").to route_to("herb_action_indications#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/herb_action_indications").to route_to("herb_action_indications#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/herb_action_indications/1").to route_to("herb_action_indications#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/herb_action_indications/1").to route_to("herb_action_indications#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/herb_action_indications/1").to route_to("herb_action_indications#destroy", id: "1")
    end
  end
end
