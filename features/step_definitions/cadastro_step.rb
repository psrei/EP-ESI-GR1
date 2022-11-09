 Dado('que estou na página de cadastro de aluno') do
    visit '/alunos/new' # Write code here that turns the phrase above into concrete actions
  end
  
  Quando('preencho o campo {string} com {string}') do |string, string2|
    fill_in string, :with => string2  
  end
  
  Quando('clico em Enviar Cadastro') do
    click_on 'Enviar Cadastro'
  end
  
  Então('ele deve ter sido salvo no banco de dados') do
    aluno = Aluno.order("id").last
    expect(aluno.nome).to eq('Jaum Silva')
    expect(aluno.email).to eq('jaumsilva@usp.br') 
  end
  
  Então('deverei ver o aluno na página de listagem de alunos') do
    expect(page).to have_content('Jaum Silva')
    expect(page).to have_content('jaumsilva@usp.br')
  end
  
  Quando('deixo o campo {string} vazio') do |string|
    fill_in string, :with => ""
  end
  
  Então('deverei ver a mensagem de erro {string}') do |string|
    expect(page).to have_content(string)
  end
  
  Quando('preencho o e-mail mas não o nome') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então('deverei ver uma mensagem de erro sobre obrigatoriedade do nome') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando('preencho o campo de e-mail com um e-mail inválido') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então('deverei ver uma mensagem de erro sobre email não válido') do
    pending # Write code here that turns the phrase above into concrete actions
  end