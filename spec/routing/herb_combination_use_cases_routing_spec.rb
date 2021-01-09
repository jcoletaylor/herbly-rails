require "rails_helper"

RSpec.describe HerbCombinationUseCasesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/herb_combination_use_cases").to route_to("herb_combination_use_cases#index")
    end

    it "routes to #show" do
      expect(get: "/herb_combination_use_cases/1").to route_to("herb_combination_use_cases#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/herb_combination_use_cases").to route_to("herb_combination_use_cases#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/herb_combination_use_cases/1").to route_to("herb_combination_use_cases#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/herb_combination_use_cases/1").to route_to("herb_combination_use_cases#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/herb_combination_use_cases/1").to route_to("herb_combination_use_cases#destroy", id: "1")
    end
  end
end
