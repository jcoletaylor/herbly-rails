require "rails_helper"

RSpec.describe FormulaAlsoKnownsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/formula_also_knowns").to route_to("formula_also_knowns#index")
    end

    it "routes to #show" do
      expect(get: "/formula_also_knowns/1").to route_to("formula_also_knowns#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/formula_also_knowns").to route_to("formula_also_knowns#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/formula_also_knowns/1").to route_to("formula_also_knowns#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/formula_also_knowns/1").to route_to("formula_also_knowns#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/formula_also_knowns/1").to route_to("formula_also_knowns#destroy", id: "1")
    end
  end
end
