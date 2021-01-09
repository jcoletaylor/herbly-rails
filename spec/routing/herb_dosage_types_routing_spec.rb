require "rails_helper"

RSpec.describe HerbDosageTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/herb_dosage_types").to route_to("herb_dosage_types#index")
    end

    it "routes to #show" do
      expect(get: "/herb_dosage_types/1").to route_to("herb_dosage_types#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/herb_dosage_types").to route_to("herb_dosage_types#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/herb_dosage_types/1").to route_to("herb_dosage_types#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/herb_dosage_types/1").to route_to("herb_dosage_types#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/herb_dosage_types/1").to route_to("herb_dosage_types#destroy", id: "1")
    end
  end
end
