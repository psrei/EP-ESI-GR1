require 'rails_helper'
require 'spec_helper'
RSpec.describe Redacao, type: :model do
  it 'invalido sem texto' do
    texto = Redacao.new
    texto.redacao = "teste"
    expect(texto).not_to be_valid
  end
  it 'invalido com texto com formato invalido' do
    bdr = Redacao.new
    bdr.redacao = "teste"    
    expect(bdr).not_to be_valid
  end
end