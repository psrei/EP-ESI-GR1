# spec/requests/essay_submission_spec.rb
require "rails_helper"

RSpec.describe "Essay submission", type: :request do
  let(:user) { create(:user) }

  before { sign_in(user) }

  describe "GET /essays/new" do
    it "renders the new essay form" do
      get new_essay_path
      expect(response.body).to include("New essay")
    end
  end

  describe "POST /essays" do
    context "with valid attributes" do
      let(:valid_attributes) { { title: "My essay", content: "This is the content of my essay." } }

      it "creates a new essay" do
        expect {
          post essays_path, params: { essay: valid_attributes }
        }.to change(Essay, :count).by(1)
      end

      it "redirects to the root page" do
        post essays_path, params: { essay: valid_attributes }
        expect(response).to redirect_to(root_path)
      end
    end

    context "with invalid attributes" do
      let(:invalid_attributes) { { title: "", content: "This is the content of my essay." } }

      it "does not create a new essay" do
        expect {
          post essays_path, params: { essay: invalid_attributes }
        }.not_to change(Essay, :count)
      end

      it "re-renders the new essay form" do
        post essays_path, params: { essay: invalid_attributes }
        expect(response.body).to include("New essay")
      end
    end
  end
end
