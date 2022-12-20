class RedacaoController < ApplicationController
  def new
  end
  def create
    @redacao = Redacao.new(redacao_params) 
    @redacao.save
  end

  private
  def redacao_params
    params.require(:redacao).permit(:redacao)
  end
end