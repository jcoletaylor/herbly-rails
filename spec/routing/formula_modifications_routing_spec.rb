require "rails_helper"

RSpec.describe FormulaModificationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/formula_modifications").to route_to("formula_modifications#index")
    end

    it "routes to #show" do
      expect(get: "/formula_modifications/1").to route_to("formula_modifications#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/formula_modifications").to route_to("formula_modifications#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/formula_modifications/1").to route_to("formula_modifications#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/formula_modifications/1").to route_to("formula_modifications#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/formula_modifications/1").to route_to("formula_modifications#destroy", id: "1")
    end
  end
end
