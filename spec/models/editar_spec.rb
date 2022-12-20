require 'rails_helper'
require 'spec_helper'
RSpec.describe Editar, type: :model do
  it 'invalido sem corpo de texto' do
    r = Editar.new
    r.texto = text_field
    expect(r).not_to be_valid
  end
  
  it 'invalido com caracteres estranhos' do
    r = Editar.new
    r.texto= "БГДЕЖИ ЛП  ѸФ  ЦЧШЩꙖѦ."
    expect(r).not_to be_valid
  end
end