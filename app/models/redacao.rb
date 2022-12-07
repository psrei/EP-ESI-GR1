class Redacao < ApplicationRecord
    validates :redacao, presence: { message: "É obrigatório inserir o texto!" }
    validates :texto, presence: { message: "É obrigatório inserir texto em português" }#, format: { with: URI::Generic::TEXT_REGEXP,
      #message: "Caracteres de texto inválido!" }
end
