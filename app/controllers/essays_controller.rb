class EssaysController < ApplicationController
  before_action :require_login

  def new
    @essay = Essay.new
  end

  def create
    @essay = current_user.essays.build(essay_params)
    if @essay.save
      redirect_to root_path, notice: "Redação enviada com sucesso!"
    else
      render :new
    end
  end

  private

  def essay_params
    params.require(:essay).permit(:title, :body)
  end
end
