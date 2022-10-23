Dado('que eu estou me registrando com minha informações válidas') do
    print("Passo 1\n")
end
  
Quando('finalizar a inserção dos dados') do
   print("Passo 2\n")
end
  
Então('estarei registrado Correct Redação') do
  @Registro.LoginAdm()
  print("Passo 3\n")
end