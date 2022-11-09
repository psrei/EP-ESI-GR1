#language: pt

Funcionalidade: Cadastro de alunos
Como aluno
Para que eu possa utilizar a plataforma
Eu quero fazer meu cadastro

Cenário: Cadastro bem sucedido
Dado que estou na página de cadastro de aluno
Quando preencho o campo "Nome" com "Jaum Silva"
Quando preencho o campo "Email" com "JaumSilva@usp.br"
E clico em salvar
Então ele deve ter sido salvo no banco de dados
E deverei ver o aluno na página de listagem de alunos

Cenário: Cadastro de aluno com erro - sem nome
Dado que estou na página de cadastro de aluno
Quando preencho o campo "Email" com "JaumSilva@usp.br"
E deixo o campo "Nome" vazio
E clico em salvar
Então deverei ver a mensagem de erro "Nome é campo obrigatório!"

Cenário: Cadastro de aluno com erro - sem e-mail
Dado que estou na página de cadastro de aluno
Quando preencho o campo "Nome" com "Jaum Silva"
E deixo o campo "Email" vazio
E clico em salvar
Então deverei ver a mensagem de erro "Email é campo obrigatório!"

Cenário: Cadastro de aluno com erro - e-mail inválido
Dado que estou na página de cadastro de aluno
Quando preencho o campo "Nome" com "Jaum Silva"
E preencho o campo "Email" com "a!1ç....,,,´/ ? @a"
E clico em salvar
Então deverei ver a mensagem de erro "E-mail inválido!"