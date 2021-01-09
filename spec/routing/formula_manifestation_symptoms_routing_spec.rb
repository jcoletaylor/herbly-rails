require "rails_helper"

RSpec.describe FormulaManifestationSymptomsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/formula_manifestation_symptoms").to route_to("formula_manifestation_symptoms#index")
    end

    it "routes to #show" do
      expect(get: "/formula_manifestation_symptoms/1").to route_to("formula_manifestation_symptoms#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/formula_manifestation_symptoms").to route_to("formula_manifestation_symptoms#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/formula_manifestation_symptoms/1").to route_to("formula_manifestation_symptoms#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/formula_manifestation_symptoms/1").to route_to("formula_manifestation_symptoms#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/formula_manifestation_symptoms/1").to route_to("formula_manifestation_symptoms#destroy", id: "1")
    end
  end
end
