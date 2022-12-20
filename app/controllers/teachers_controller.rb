class TeachersController < ApplicationController
  before_action :require_login
  before_action :require_teacher

  def index
    @essays = Essay.where(corrected: false)
  end

  def show
    @essay = Essay.find(params[:id])
  end

  def update
    @essay = Essay.find(params[:id])
    if @essay.update(essay_params)
      redirect_to root_path, notice: "Redação corrigida com sucesso!"
    else
      render :show
    end
  end

  private

  def essay_params
    params.require(:essay).permit(:grade, :comments)
  end
end