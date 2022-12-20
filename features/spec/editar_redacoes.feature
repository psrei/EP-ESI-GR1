#language: pt

Funcionalidade: editar redacao antes de submete-la
Como aluno
Para que eu possa editar uma redacao na pagina aluno
Eu quero editar uma redacao na pagina do aluno 

Cenário: Edicao de redacao com sucesso
Dado que estou na página do aluno
Quando cliclo em Editar redacao
E clico em Editar redacao
Então uma caixa de texto com a redacao salva deve ser aberta
E deverei ver a redacao salva e editavel

Cenário: Edicao de redacao com erro - sem redacao para editar
Dado que estou na página do aluno
Quando cliclo em Editar redacao
E nao existe redacao a ser editada
E clico em Editar redacao
Então deverei ver a mensagem de erro "Sem redação a ser editada"

Cenário: Edicao de redacao com erro - erro de edicao
Dado que estou na página do aluno
Quando cliclo em Editar redacao
E clico em Editar redacao
E a edicao tem caracteres estranhos
Então deverei ver a mensagem de erro "Utilizar caracteres do léxico português "