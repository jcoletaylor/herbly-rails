require "rails_helper"

RSpec.describe FormulaNotesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/formula_notes").to route_to("formula_notes#index")
    end

    it "routes to #show" do
      expect(get: "/formula_notes/1").to route_to("formula_notes#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/formula_notes").to route_to("formula_notes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/formula_notes/1").to route_to("formula_notes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/formula_notes/1").to route_to("formula_notes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/formula_notes/1").to route_to("formula_notes#destroy", id: "1")
    end
  end
end
