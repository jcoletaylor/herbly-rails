require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/formula_named_actions", type: :request do
  # This should return the minimal set of attributes required to create a valid
  # FormulaNamedAction. As you add validations to FormulaNamedAction, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the headers
  # in order to pass any filters (e.g. authentication) defined in
  # FormulaNamedActionsController, or in your router and rack
  # middleware. Be sure to keep this updated too.
  let(:valid_headers) {
    {}
  }

  describe "GET /index" do
    it "renders a successful response" do
      FormulaNamedAction.create! valid_attributes
      get formula_named_actions_url, headers: valid_headers, as: :json
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      formula_named_action = FormulaNamedAction.create! valid_attributes
      get formula_named_action_url(formula_named_action), as: :json
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new FormulaNamedAction" do
        expect {
          post formula_named_actions_url,
               params: { formula_named_action: valid_attributes }, headers: valid_headers, as: :json
        }.to change(FormulaNamedAction, :count).by(1)
      end

      it "renders a JSON response with the new formula_named_action" do
        post formula_named_actions_url,
             params: { formula_named_action: valid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:created)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end

    context "with invalid parameters" do
      it "does not create a new FormulaNamedAction" do
        expect {
          post formula_named_actions_url,
               params: { formula_named_action: invalid_attributes }, as: :json
        }.to change(FormulaNamedAction, :count).by(0)
      end

      it "renders a JSON response with errors for the new formula_named_action" do
        post formula_named_actions_url,
             params: { formula_named_action: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq("application/json")
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested formula_named_action" do
        formula_named_action = FormulaNamedAction.create! valid_attributes
        patch formula_named_action_url(formula_named_action),
              params: { formula_named_action: new_attributes }, headers: valid_headers, as: :json
        formula_named_action.reload
        skip("Add assertions for updated state")
      end

      it "renders a JSON response with the formula_named_action" do
        formula_named_action = FormulaNamedAction.create! valid_attributes
        patch formula_named_action_url(formula_named_action),
              params: { formula_named_action: new_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end

    context "with invalid parameters" do
      it "renders a JSON response with errors for the formula_named_action" do
        formula_named_action = FormulaNamedAction.create! valid_attributes
        patch formula_named_action_url(formula_named_action),
              params: { formula_named_action: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq("application/json")
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested formula_named_action" do
      formula_named_action = FormulaNamedAction.create! valid_attributes
      expect {
        delete formula_named_action_url(formula_named_action), headers: valid_headers, as: :json
      }.to change(FormulaNamedAction, :count).by(-1)
    end
  end
end
