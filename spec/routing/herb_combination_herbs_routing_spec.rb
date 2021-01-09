require "rails_helper"

RSpec.describe HerbCombinationHerbsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/herb_combination_herbs").to route_to("herb_combination_herbs#index")
    end

    it "routes to #show" do
      expect(get: "/herb_combination_herbs/1").to route_to("herb_combination_herbs#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/herb_combination_herbs").to route_to("herb_combination_herbs#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/herb_combination_herbs/1").to route_to("herb_combination_herbs#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/herb_combination_herbs/1").to route_to("herb_combination_herbs#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/herb_combination_herbs/1").to route_to("herb_combination_herbs#destroy", id: "1")
    end
  end
end
