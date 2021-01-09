require "rails_helper"

RSpec.describe HerbDosagesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/herb_dosages").to route_to("herb_dosages#index")
    end

    it "routes to #show" do
      expect(get: "/herb_dosages/1").to route_to("herb_dosages#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/herb_dosages").to route_to("herb_dosages#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/herb_dosages/1").to route_to("herb_dosages#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/herb_dosages/1").to route_to("herb_dosages#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/herb_dosages/1").to route_to("herb_dosages#destroy", id: "1")
    end
  end
end
