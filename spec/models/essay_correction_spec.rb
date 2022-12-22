# spec/requests/essay_correction_spec.rb
require "rails_helper"

RSpec.describe "Essay correction", type: :request do
  let(:teacher) { create(:user, type: "Teacher") }
  let(:student) { create(:user, type: "Student") }
  let!(:essay) { create(:essay, user: student) }

  before { sign_in(teacher) }

  describe "PATCH /students/:id/essays/:id" do
    context "with valid attributes" do
      let(:valid_attributes) { { corrected: true } }

      it "updates the essay" do
        patch student_essay_path(student, essay), params: { essay: valid_attributes }
        essay.reload
        expect(essay.corrected?).to be true
      end

      it "redirects to the student's show page" do
        patch student_essay_path(student, essay), params: { essay: valid_attributes }
        expect(response).to redirect_to(student_path(student))
      end
    end

    context "with invalid attributes" do
      let(:invalid_attributes) { { corrected: nil } }

      it "does not update the essay" do
        patch student_essay_path(student, essay), params: { essay: invalid_attributes }
        essay.reload
        expect(essay.corrected?).to be false
      end

      it "re-renders the student's show page" do
        patch student_essay_path(student, essay), params: { essay: invalid_attributes }
        expect(response.body).to include("Show student")
      end
    end
  end
end