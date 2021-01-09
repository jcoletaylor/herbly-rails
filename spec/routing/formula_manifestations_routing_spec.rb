require "rails_helper"

RSpec.describe FormulaManifestationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/formula_manifestations").to route_to("formula_manifestations#index")
    end

    it "routes to #show" do
      expect(get: "/formula_manifestations/1").to route_to("formula_manifestations#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/formula_manifestations").to route_to("formula_manifestations#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/formula_manifestations/1").to route_to("formula_manifestations#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/formula_manifestations/1").to route_to("formula_manifestations#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/formula_manifestations/1").to route_to("formula_manifestations#destroy", id: "1")
    end
  end
end
