require "rails_helper"

RSpec.describe EssaysController, type: :controller do
  let(:user) { create(:user) }
  let(:essay_attributes) { attributes_for(:essay) }

  before { sign_in(user) }

  describe "GET #new" do
    it "assigns a new essay to @essay" do
      get :new
      expect(assigns(:essay)).to be_a_new(Essay)
    end

    it "renders the :new template" do
      get :new
      expect(response).to render_template(:new)
    end
  end

  describe "POST #create" do
    context "with valid attributes" do
      it "creates a new essay" do
        expect {
          post :create, params: { essay: essay_attributes }
        }.to change(Essay, :count).by(1)
      end

      it "redirects to the root path" do
        post :create, params: { essay: essay_attributes }
        expect(response).to redirect_to(root_path)
      end
    end

    context "with invalid attributes" do
      it "does not save the new essay" do
        expect {
          post :create, params: { essay: attributes_for(:essay, title: nil) }
        }.not_to change(Essay, :count)
      end

      it "re-renders the :new template" do
        post :create, params: { essay: attributes_for(:essay, title: nil) }
        expect(response).to render_template(:new)
      end
    end
  end
end
