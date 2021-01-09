require "rails_helper"

RSpec.describe FormulaSyndromesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/formula_syndromes").to route_to("formula_syndromes#index")
    end

    it "routes to #show" do
      expect(get: "/formula_syndromes/1").to route_to("formula_syndromes#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/formula_syndromes").to route_to("formula_syndromes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/formula_syndromes/1").to route_to("formula_syndromes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/formula_syndromes/1").to route_to("formula_syndromes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/formula_syndromes/1").to route_to("formula_syndromes#destroy", id: "1")
    end
  end
end
