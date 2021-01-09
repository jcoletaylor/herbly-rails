require "rails_helper"

RSpec.describe FormulaContraindicationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/formula_contraindications").to route_to("formula_contraindications#index")
    end

    it "routes to #show" do
      expect(get: "/formula_contraindications/1").to route_to("formula_contraindications#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/formula_contraindications").to route_to("formula_contraindications#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/formula_contraindications/1").to route_to("formula_contraindications#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/formula_contraindications/1").to route_to("formula_contraindications#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/formula_contraindications/1").to route_to("formula_contraindications#destroy", id: "1")
    end
  end
end
