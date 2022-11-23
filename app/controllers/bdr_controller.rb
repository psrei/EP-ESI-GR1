class BdrController < ApplicationController
  
  def new      
    @bdr = Bdr.new
  end

  def create
    @bdr = Bdr.new(bdr_params) 
    if @bdr.save
      redirect_to @bdr
    else
      render :new, status: :unprocessable_entity, content_type: "text/html"
      headers["Content-Type"] = "text/html"
    end
  end

  def show
    @bdr = Bdr.find(params[:id])
  end

  private
  def bdr_params
    params.require(:bdr).permit(:aluno, :redacao)
  end

end