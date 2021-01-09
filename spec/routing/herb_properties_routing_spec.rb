require "rails_helper"

RSpec.describe HerbPropertiesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/herb_properties").to route_to("herb_properties#index")
    end

    it "routes to #show" do
      expect(get: "/herb_properties/1").to route_to("herb_properties#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/herb_properties").to route_to("herb_properties#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/herb_properties/1").to route_to("herb_properties#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/herb_properties/1").to route_to("herb_properties#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/herb_properties/1").to route_to("herb_properties#destroy", id: "1")
    end
  end
end
