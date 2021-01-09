require "rails_helper"

RSpec.describe FormulaConditionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/formula_conditions").to route_to("formula_conditions#index")
    end

    it "routes to #show" do
      expect(get: "/formula_conditions/1").to route_to("formula_conditions#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/formula_conditions").to route_to("formula_conditions#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/formula_conditions/1").to route_to("formula_conditions#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/formula_conditions/1").to route_to("formula_conditions#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/formula_conditions/1").to route_to("formula_conditions#destroy", id: "1")
    end
  end
end
