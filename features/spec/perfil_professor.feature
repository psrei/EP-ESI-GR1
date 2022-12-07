#language: pt

Funcionalidade: Perfil do professor
Como professor
Para que eu possa visualizar minhas informações
Eu quero acessar a página de perfil e visualizar métricas históricas
E ver meu painel de redações disponíveis para correção


Cenário: Acessei a página com sucesso
Dado que estou na página de início
Quando clico no ícone de perfil
Então sou direcionado a página de perfil
E deverei ver minhas métricas e a tabela de redações

Cenário Acessei a página sem sucesso; não estava logado
Dado que estou na página de início
Quando clico no ícone de perfil
Então sou direcionado a página de perfil
E deverei ver uma mensagem solicitando login

Funcionalidade: Enviar redação via perfil
Como aluno
Para que eu possa enviar uma redação
Eu quero acessar a página de perfil e visualizar os temas disponíveis para submissão
E, ao clicar em uma opção
Eu quero ser direcionado a página de submissão de redação

Cenário: Acessei a página com sucesso
Dado que estou na página de aluno
Quando clico no botão de direcionamento
Então sou direcionado a página de submissão

Cenário: Acessei a página sem sucesso
Dado que estou na página de aluno
Quando clico no botão de direcionamento
Então sou direcionado a página de submissão
E deve aparecer a mensagem de erro
