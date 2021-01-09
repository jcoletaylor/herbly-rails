require "rails_helper"

RSpec.describe HerbCategoriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/herb_categories").to route_to("herb_categories#index")
    end

    it "routes to #show" do
      expect(get: "/herb_categories/1").to route_to("herb_categories#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/herb_categories").to route_to("herb_categories#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/herb_categories/1").to route_to("herb_categories#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/herb_categories/1").to route_to("herb_categories#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/herb_categories/1").to route_to("herb_categories#destroy", id: "1")
    end
  end
end
