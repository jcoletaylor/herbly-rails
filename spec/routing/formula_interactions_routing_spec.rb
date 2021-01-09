require "rails_helper"

RSpec.describe FormulaInteractionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/formula_interactions").to route_to("formula_interactions#index")
    end

    it "routes to #show" do
      expect(get: "/formula_interactions/1").to route_to("formula_interactions#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/formula_interactions").to route_to("formula_interactions#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/formula_interactions/1").to route_to("formula_interactions#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/formula_interactions/1").to route_to("formula_interactions#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/formula_interactions/1").to route_to("formula_interactions#destroy", id: "1")
    end
  end
end
