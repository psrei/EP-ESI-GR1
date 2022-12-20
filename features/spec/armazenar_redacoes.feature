#language: pt

@armazenamento_redacoes
Funcionalidade: Armazenar redacoes
Como administrador
Para que eu possa armazenar a redação de um aluno
Eu quero salvar uma redação no banco de dados

Cenário: Armazenamento de redacao com sucesso
Dado que estou na página de redacoes cadastradas
Quando clico em visualizar redacoes
E clico na redacao submetida
Então ela deve ter sido salva no banco de dados e passivel de ser visualizada
E deverei ver a redacao na página de listagem de redacoes

Cenário: Erro no armazenamento da redacao - sem texto
Dado que estou na página de visualizar redacoes
E  o campo "Redação" está vazio
E o campo "Aluno" está preenchido
Então deverei ver a mensagem de erro "Falha no salvamento da redacao"

Cenário: Armazenamento de redacao com erro - aluno nao vinculado
Dado que estou na página de visualizar redacoes
E  o campo "Redação" está preenchido
E o campo "Armazenamento" está vazio
Então deverei ver a mensagem de erro "Redacao nao vinculada ao aluno"