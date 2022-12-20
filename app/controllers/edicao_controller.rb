class AlunosController < ApplicationController
  def new
  end
  def create
    @edicao = Redacao.new(redacao_params) 
    @editar.save
  end

  private
  def redacao_params
    params.require(:editar).permit(:redacao_text_box, :titulo_text_box)
  end
end
