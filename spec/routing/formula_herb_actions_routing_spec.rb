require "rails_helper"

RSpec.describe FormulaHerbActionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/formula_herb_actions").to route_to("formula_herb_actions#index")
    end

    it "routes to #show" do
      expect(get: "/formula_herb_actions/1").to route_to("formula_herb_actions#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/formula_herb_actions").to route_to("formula_herb_actions#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/formula_herb_actions/1").to route_to("formula_herb_actions#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/formula_herb_actions/1").to route_to("formula_herb_actions#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/formula_herb_actions/1").to route_to("formula_herb_actions#destroy", id: "1")
    end
  end
end
