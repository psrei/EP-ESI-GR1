require 'rails_helper'
require 'spec_helper'
RSpec.describe Redacao, type: :model do
  it 'invalido sem corpo de texto' do
    r = Redacao.new
    r.texto = "No meio do caminho tinha uma pedra
                    Tinha uma pedra no meio do caminho
                    Tinha uma pedra
                    No meio do caminho tinha uma pedra
                    Nunca me esquecerei desse acontecimento
                    Na vida de minhas retinas tão fatigadas
                    Nunca me esquecerei que no meio do caminho
                    Tinha uma pedra
                    Tinha uma pedra no meio do caminho
                    No meio do caminho tinha uma pedra."
    expect(r).not_to be_valid
  end
  
  it 'invalido com caracteres estranhos' do
    r = Redacao.new
    r.texto= "БГДЕЖИ ЛП  ѸФ  ЦЧШЩꙖѦ."
    expect(a).not_to be_valid
    
  end
end
