require "rails_helper"

RSpec.describe TeachersController, type: :controller do
  let(:teacher) { create(:user, type: "Teacher") }
  let(:student) { create(:user, type: "Student") }
  let!(:essay) { create(:essay, user: student) }

  before { sign_in(teacher) }

  describe "GET #index" do
    it "assigns all students to @students" do
      get :index
      expect(assigns(:students)).to match_array([student])
    end

    it "renders the :index template" do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe "GET #show" do
    it "assigns the selected student to @student" do
      get :show, params: { id: student.id }
      expect(assigns(:student)).to eq(student)
    end

    it "assigns the essays of the selected student to @essays" do
      get :show, params: { id: student.id }
      expect(assigns(:essays)).to match_array([essay])
    end

    it "renders the :show template" do
      get :show, params: { id: student.id }
      expect(response).to render_template(:show)
    end
  end

  describe "PATCH #update" do
    context "with valid attributes" do
      it "updates the essay" do
        patch :update, params: { id: student.id, essay: { corrected: true } }
        essay.reload
        expect(essay.corrected?).to be true
      end

      it "redirects to the teacher's show page" do
        patch :update, params: { id: student.id, essay: { corrected: true } }
        expect(response).to redirect_to(teacher_path(student))
      end
    end

    context "with invalid attributes" do
      it "does not update the essay" do
        patch :update, params: { id: student.id, essay: { corrected: nil } }
        essay.reload
        expect(essay.corrected?).to be false
      end

      it "re-renders the :show template" do
        patch :update, params: { id: student.id, essay: { corrected: nil } }
        expect(response).to render_template(:show)
      end
    end
  end
end
