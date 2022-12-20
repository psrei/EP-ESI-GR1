Dado('que estou na página de redacoes salvas') do
    visit 'redacao/view'
  end
  
  Quando('clico em visualizar redacoes') do
    click_on 'Visualizar Redacoes'
  end
  
  Quando('deverei ver a redacao na página de listagem de redacoes') do
    expect(page).to have_content(redacao)
  end