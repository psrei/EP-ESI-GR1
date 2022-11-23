class Bdr < ApplicationRecord
  validates :bdr, presence: { message: "É obrigatório ter uma banco de redacoes!" }
  validates :redacao, presence: { message: "É obrigatório ter a redacao!" } 
end