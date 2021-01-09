require "rails_helper"

RSpec.describe FormulaHerbsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/formula_herbs").to route_to("formula_herbs#index")
    end

    it "routes to #show" do
      expect(get: "/formula_herbs/1").to route_to("formula_herbs#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/formula_herbs").to route_to("formula_herbs#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/formula_herbs/1").to route_to("formula_herbs#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/formula_herbs/1").to route_to("formula_herbs#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/formula_herbs/1").to route_to("formula_herbs#destroy", id: "1")
    end
  end
end
