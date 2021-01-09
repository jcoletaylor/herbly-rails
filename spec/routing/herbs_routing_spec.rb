require "rails_helper"

RSpec.describe HerbsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/herbs").to route_to("herbs#index")
    end

    it "routes to #show" do
      expect(get: "/herbs/1").to route_to("herbs#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/herbs").to route_to("herbs#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/herbs/1").to route_to("herbs#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/herbs/1").to route_to("herbs#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/herbs/1").to route_to("herbs#destroy", id: "1")
    end
  end
end
