class Aluno < ApplicationRecord
    validates :nome, presence: { message: "Nome é campo obrigatório" }
    validates :email, presence: { message: "E-mail é campo obrigatório!" }, format: { with: URI::MailTo::EMAIL_REGEXP,
        message: "Formato de e-mail inválido!" } 
end
