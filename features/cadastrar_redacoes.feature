#language: pt

Funcionalidade: Cadastrar redacoes
Como administrador
Para que eu possa registrar a redação de um aluno
Eu quero cadastrar uma redação no banco de dados

Cenário: Cadastro de redacao com sucesso
Dado que estou na página de cadastro de redacao
Quando preencho o campo "Redação" com "texto"
E clico em salvar
Então ela deve ter sido salva no banco de dados
E deverei ver a redacao na página de listagem de alunos

Cenário: Cadastro de redacao com erro - sem texto
Dado que estou na página de cadastro de redacao
E deixo o campo "Redação" vazio
E clico em salvar
Então deverei ver a mensagem de erro "É obrigatório escrever o texto!"

Cenário: Cadastro de redacao com erro - texto inválido
Dado que estou na página de cadastro de redacao
Quando preencho o campo "Redação" com "БГДЕЖИ ЛП  ѸФ  ЦЧШЩꙖѦ."
E clico em salvar
Então deverei ver a mensagem de erro "Formato de redação inválido!"
