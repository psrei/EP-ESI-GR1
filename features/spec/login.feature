#language:pt

@Login
Funcionalidade: Login
    Eu como Usuário do Correct Redação
    Posso logar
    Para Acessar o Correct Redação com meu perfil
    
    Cenário: Registro válido
        Dado que eu estou logando com informações válidas
        Quando tentar acessar o Correct
        Então estarei logado Correct Redação


    Cenário: Registro válido
        Dado que eu estou logando com informações errôneas
        Quando tentar acessar o Correct
        Então náo conseguirei Correct Redação