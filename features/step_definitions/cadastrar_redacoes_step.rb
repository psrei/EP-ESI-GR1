Dado('que estou na página de cadastro de redação') do
    visit '/redacao/new'
end
  
  Quando('preencho o campo {Redação} com {Texto}') do |string, string2|
    fill_in string, :with => string2  
  end
  
  Quando('clico em salvar') do
    click_on 'Salvar nova redacao'
  end
  
  Então('ela deve ser salva no banco de dados') do
    redacao = Redacao.order("id").last
    expect(redacao.texto).to eq('No meio do caminho tinha uma pedra
                                Tinha uma pedra no meio do caminho
                                Tinha uma pedra
                                No meio do caminho tinha uma pedra
                                Nunca me esquecerei desse acontecimento
                                Na vida de minhas retinas tão fatigadas
                                Nunca me esquecerei que no meio do caminho
                                Tinha uma pedra
                                Tinha uma pedra no meio do caminho
                                No meio do caminho tinha uma pedra.')
  end
  
  Entao('deverei ver a redacao na página de listagem de redacoes') do
    expect(page).to have_content('No meio do caminho tinha uma pedra
                                Tinha uma pedra no meio do caminho
                                Tinha uma pedra
                                No meio do caminho tinha uma pedra
                                Nunca me esquecerei desse acontecimento
                                Na vida de minhas retinas tão fatigadas
                                Nunca me esquecerei que no meio do caminho
                                Tinha uma pedra
                                Tinha uma pedra no meio do caminho
                                No meio do caminho tinha uma pedra.')
  end
  
  Quando('nao preencher redacao com o texto') do
    fill_in string, :with => ""
  end
  
  Entao('deverei ver uma mensagem de erro {É necessário inserir um texto no campo redação} sobre obrigatoriedade do texto') do |string|
    expect(page).to have_content(string)
  end
  
  Quando('preencho o campo de redacao com um texto inválido') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Entao('deverei ver uma mensagem de erro sobre texto não válido') do
    pending # Write code here that turns the phrase above into concrete actions
  end
