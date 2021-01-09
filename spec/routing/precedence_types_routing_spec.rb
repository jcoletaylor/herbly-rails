require "rails_helper"

RSpec.describe PrecedenceTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/precedence_types").to route_to("precedence_types#index")
    end

    it "routes to #show" do
      expect(get: "/precedence_types/1").to route_to("precedence_types#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/precedence_types").to route_to("precedence_types#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/precedence_types/1").to route_to("precedence_types#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/precedence_types/1").to route_to("precedence_types#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/precedence_types/1").to route_to("precedence_types#destroy", id: "1")
    end
  end
end
