require "rails_helper"

RSpec.describe HerbWarningsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/herb_warnings").to route_to("herb_warnings#index")
    end

    it "routes to #show" do
      expect(get: "/herb_warnings/1").to route_to("herb_warnings#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/herb_warnings").to route_to("herb_warnings#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/herb_warnings/1").to route_to("herb_warnings#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/herb_warnings/1").to route_to("herb_warnings#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/herb_warnings/1").to route_to("herb_warnings#destroy", id: "1")
    end
  end
end
