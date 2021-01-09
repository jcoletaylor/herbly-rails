require "rails_helper"

RSpec.describe FormulaNamedActionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/formula_named_actions").to route_to("formula_named_actions#index")
    end

    it "routes to #show" do
      expect(get: "/formula_named_actions/1").to route_to("formula_named_actions#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/formula_named_actions").to route_to("formula_named_actions#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/formula_named_actions/1").to route_to("formula_named_actions#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/formula_named_actions/1").to route_to("formula_named_actions#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/formula_named_actions/1").to route_to("formula_named_actions#destroy", id: "1")
    end
  end
end
