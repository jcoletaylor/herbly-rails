require "rails_helper"

RSpec.describe FormulaModificationSetsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/formula_modification_sets").to route_to("formula_modification_sets#index")
    end

    it "routes to #show" do
      expect(get: "/formula_modification_sets/1").to route_to("formula_modification_sets#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/formula_modification_sets").to route_to("formula_modification_sets#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/formula_modification_sets/1").to route_to("formula_modification_sets#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/formula_modification_sets/1").to route_to("formula_modification_sets#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/formula_modification_sets/1").to route_to("formula_modification_sets#destroy", id: "1")
    end
  end
end
